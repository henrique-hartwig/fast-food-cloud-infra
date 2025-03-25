variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "private_subnet_ids" {
  description = "IDs das subnets privadas"
  type        = list(string)
}

variable "vpc_id" {
  description = "ID da VPC"
  type        = string
}