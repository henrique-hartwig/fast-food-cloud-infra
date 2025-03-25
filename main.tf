module "networking" {
  source = "./modules/networking"

  project_name = var.project_name
  vpc_cidr     = var.vpc_cidr
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
}

module "eks" {
  source = "./modules/eks"

  project_name       = var.project_name
  private_subnet_ids = module.networking.private_subnet_ids
  vpc_id            = module.networking.vpc_id
}

module "ecr" {
  source = "./modules/ecr"

  repository_name = var.ecr_repository_name
  project_name    = var.project_name
}

module "deployment" {
  source = "./deployment"

  project_name = var.project_name
  ecr_repository_url = module.ecr.repository_url
  app_image_tag = var.app_image_tag
}
