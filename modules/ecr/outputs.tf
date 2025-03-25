output "repository_url" {
  description = "ECR Repository URL"
  value       = data.aws_ecr_repository.existing.repository_url
}

output "repository_arn" {
  description = "ECR Repository ARN"
  value       = data.aws_ecr_repository.existing.arn
}
