resource "kubernetes_ingress_v1" "httpd_ingress" {
  metadata {
    name      = "${var.name}-ingress"
    namespace = var.namespace

    annotations = {
      "cert-manager.io/cluster-issuer"           = "letsencrypt-prod"
      "nginx.ingress.kubernetes.io/ssl-redirect" = "true"
      "nginx.ingress.kubernetes.io/force-ssl-redirect" = "true"
    }

    labels = {
      app = var.name
    }
  }

  spec {
    ingress_class_name = "nginx"

    tls {
      hosts       = [var.host]
      secret_name = "${var.name}-tls"
    }

    rule {
      host = var.host

      http {
        path {
          path      = "/"
          path_type = "Prefix"

          backend {
            service {
              name = var.name
              port {
                number = var.service_port
              }
            }
          }
        }
      }
    }
  }
}
