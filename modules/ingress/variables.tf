
variable "name" {
  description = "The name of the service/ingress"
  type        = string
  default     = "ingress-route-app"
}

variable "namespace" {
  description = "Namespace where the ingress and service are deployed"
  type        = string
  default     = "default"
}

variable "host" {
  description = "Hostname for ingress"
  type        = string
  default     = "app-cluster2.appflex.io"
}

variable "service_port" {
  description = "Port of the backend service"
  type        = number
  default     = "80"
}



