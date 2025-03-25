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

output "nat_gateway_id" {
  description = "NAT Gateway Id existing"
  value       = data.aws_nat_gateway.existing.id
}

output "nat_gateway_public_ip" {
  description = "NAT Gateway Public IP"
  value       = data.aws_nat_gateway.existing.public_ip
}

output "private_route_table_id" {
  description = "Private Route Table Id"
  value       = data.aws_route_table.private.id
}
