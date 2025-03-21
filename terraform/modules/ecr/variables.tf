variable "repository_name" {
  description = "ECR Repository Name"
  type        = string
}

variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "environment" {
  description = "Envs (dev, prod)"
  type        = string
}
