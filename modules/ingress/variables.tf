
variable "host" {
  description = "Domain name for ingress (e.g. app.example.com)"
  type        = string
}

variable "ingress_class_name" {
  description = "Ingress class (nginx or traefik)"
  type        = string
  default     = "nginx"
}

variable "email" {
  description = "Email for Let's Encrypt registration"
  type        = string
}

variable "cluster_issuer_name" {
  description = "cert-manager ClusterIssuer name"
  type        = string
  default     = "letsencrypt-prod"
}

variable "acme_server" {
  description = "ACME server URL (staging or production)"
  type        = string
  default     = "https://acme-v02.api.letsencrypt.org/directory"
}
