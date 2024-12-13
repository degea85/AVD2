variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy the resources in"
  default     = "East US"
}

variable "hostpool_name" {
  description = "The name of the host pool"
  type        = string
}

variable "load_balancer_type" {
  description = "load balancer type"
  type        = string
}

