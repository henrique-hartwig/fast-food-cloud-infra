output "vpc_id" {
  description = "ID da VPC"
  value       = data.aws_vpc.main.id
}

output "private_subnet_ids" {
  description = "IDs das subnets privadas"
  value       = data.aws_subnets.private.ids
}

output "public_subnet_ids" {
  description = "IDs das subnets públicas"
  value       = data.aws_subnets.public.ids
}
