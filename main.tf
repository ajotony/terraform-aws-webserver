module "vpc" {
  source = "./modules/vpc"

  project_name = var.project_name
  vpc_cidr     = var.vpc_cidr
}

module "networking" {
  source = "./modules/networking"

  project_name       = var.project_name
  vpc_id             = module.vpc.vpc_id
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
}

module "security_group" {
  source = "./modules/security-group"

  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
}

module "compute" {
  source = "./modules/compute"

  project_name      = var.project_name
  instance_type     = var.instance_type
  key_name          = var.key_name
  subnet_id         = module.networking.subnet_id
  security_group_id = module.security_group.security_group_id
}