data "aws_ecr_repository" "existing" {
  name = var.repository_name
}

resource "aws_ecr_lifecycle_policy" "app" {
  repository = data.aws_ecr_repository.existing.name

  policy = jsonencode({
    rules = [{
      rulePriority = 1
      description  = "Keep only the last 30 images"
      selection = {
        tagStatus   = "any"
        countType   = "imageCountMoreThan"
        countNumber = 30
      }
      action = {
        type = "expire"
      }
    }]
  })
}