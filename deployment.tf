resource "kubernetes_service" "applineten" {
  metadata {
    name = "linetenapp"
  }
  spec {
    selector = {
      app = kubernetes_pod.applineten.metadata.0.labels.app
    }
    port {
      port        = 80
      target_port = 80
    }

    type = "LoadBalancer"
  }
}


resource "kubernetes_pod" "applineten" {
  metadata {
    name = "linetenapp"
    labels = {
      app = "linetenapp"
    }
  }
 
  spec {
    container {
      image = "public.ecr.aws/m3d7o1k1/prodalsv1:linetenapp"
      name  = "linetenapp"
    }
  }
}