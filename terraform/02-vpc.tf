module "dev_network" {
  source = "./modules/aws-network" #git@github.com:klimantovich/itransition-devops-tasks.git//Terraform/Terraform-modules/aws-network

  aws_region  = var.aws_region
  vpc_cidr    = var.vpc_cidr
  environment = var.environment

}
