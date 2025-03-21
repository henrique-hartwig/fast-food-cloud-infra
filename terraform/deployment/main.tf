resource "kubernetes_deployment" "app" {
  metadata {
    name = var.project_name
    labels = {
      app = var.project_name
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = var.project_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.project_name
        }
      }

      spec {
        container {
          name  = var.project_name
          image = "${var.ecr_repository_url}:${var.app_image_tag}"

          port {
            container_port = 3000
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "app" {
  metadata {
    name = var.project_name
  }

  spec {
    selector = {
      app = kubernetes_deployment.app.metadata[0].labels.app
    }

    port {
      port        = 80
      target_port = 3000
    }

    type = "LoadBalancer"
  }
}