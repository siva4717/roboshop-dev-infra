data "aws_ssm_parameter" "backend_alb_sg_id" {
  name="/${var.project_name}/${var.environment}/backend_alb"
}


data "aws_ssm_parameter" "bastion_sg_id" {
  name="/${var.project_name}/${var.environment}/bastion"
}

data "aws_ssm_parameter" "mongodb_sg_id" {
  name="/${var.project_name}/${var.environment}/mongodb"
}

data "aws_ssm_parameter" "redis_sg_id" {
  name="/${var.project_name}/${var.environment}/redis"
}

data "aws_ssm_parameter" "mysql_sg_id" {
  name="/${var.project_name}/${var.environment}/mysql"
}

data "aws_ssm_parameter" "rabbitmq_sg_id" {
  name="/${var.project_name}/${var.environment}/rabbitmq"
}

data "aws_ssm_parameter" "catalogue_sg_id" {
  name="/${var.project_name}/${var.environment}/catalogue"
}


