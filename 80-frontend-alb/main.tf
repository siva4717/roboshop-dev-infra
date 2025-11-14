resource "aws_lb" "frontend_alb" {
  name = "${local.common_name_suffix}-frontend-alb" #roboshop-dev-frontend-alb
  internal=false
  load_balancer_type="application" 
  security_groups = [local.frontend_alb_sg_id]
  enable_deletion_protection = false
  subnets = [local.public_subnet_ids]
  tags = merge(
    local.common_tags,{
        Name="${local.common_name_suffix}-frontend-alb"
    }
  )
}


resource "aws_lb_listener" "frontend_alb" {
  load_balancer_arn = aws_lb.frontend_alb.arn
  port = "443"
  protocol = "HTTPS"

  default_action {
    type = "fixed-responce"

    fixed_response {
      content_type = "text/plain"
      message_body = "Hi iam from frontend ALB HTTPS"
      status_code = "200"
    }
  }
}


resource "aws_route53_record" "frontend_alb" {
  zone_id = var.zone_id
  name = "*.frontend_alb-${var.environment}.${var.domain_name}"
  type = "A"

  alias {
    name = aws_lb.frontend_alb.dns_name
    zone_id = aws_lb.frontend_alb.zone_id
    evaluate_target_health = true
    
  }
}