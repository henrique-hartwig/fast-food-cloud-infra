output "cluster_endpoint" {
  description = "Endpoint do cluster EKS"
  value       = aws_eks_cluster.main.endpoint
}

output "cluster_name" {
  description = "Nome do cluster EKS"
  value       = aws_eks_cluster.main.name
}

output "cluster_certificate_authority_data" {
  description = "Certificado de autoridade do cluster"
  value       = aws_eks_cluster.main.certificate_authority[0].data
}