module "vpc" {
  source = "git::https://github.com/siva4717/terraform-aws-vpc.git?ref=main"

  project_name = var.project_name
  environment = var.environment
  cidr_block = var.cidr_block

  public_subnet_cidrs=var.public_subnet_cidrs
  private_subnet_cidrs=var.private_subnet_cidrs
  database_subnet_cidrs=var.database_subnet_cidrs

  vpc_tags=var.vpc_tags

  is_peering_required = var.is_peering_required 
  
}

