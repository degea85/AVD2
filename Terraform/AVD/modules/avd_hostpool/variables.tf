variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy the resources in"
  type        = string
}

variable "hostpool_name" {
  description = "The name of the Azure Virtual Desktop Hostpool"
  type        = string
}

variable "load_balancer_type" {
  description = "load balancer type"
  type        = string
}
