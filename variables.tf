variable "aws_region" {
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project Name"
  type        = string
  default     = "fast-food"
}

variable "vpc_cidr" {
  description = "CIDR block VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "ecr_repository_name" {
  description = "ECR repository name"
  type        = string
  default     = "fast-food-api"
}

variable "app_image_tag" {
  description = "Image tag"
  type        = string
  default     = "latest"
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = "fastfood-cluster"
}

