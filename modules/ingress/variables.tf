
variable "host" {
  description = "Domain name for ingress (e.g. app.example.com)"
  type        = string
  default     = "app-cluster2.appflex.io"
}

variable "ingress_class_name" {
  description = "Ingress class (nginx or traefik)"
  type        = string
  default     = "nginx"
}


