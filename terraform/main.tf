module "networking" {
  source = "./modules/networking"

  project_name = var.project_name
  environment  = var.environment
  vpc_cidr     = var.vpc_cidr
}

module "eks" {
  source = "./modules/eks"

  project_name       = var.project_name
  environment       = var.environment
  private_subnet_ids = module.networking.private_subnet_ids
  vpc_id            = module.networking.vpc_id
}

module "ecr" {
  source = "./modules/ecr"

  repository_name = var.ecr_repository_name
  project_name    = var.project_name
  environment     = var.environment
}