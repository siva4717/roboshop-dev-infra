data "aws_ami" "joindevops" {
 
  owners           = ["973714476881"]
  most_recent      = true
 

  filter {
    name   = "DevOpsPractice"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
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



data "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/private_subnet_ids"
  
}