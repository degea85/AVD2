terraform {
  required_version = ">= 0.13"
    required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>4.5.0"
    }
    azuread = {
      source = "hashicorp/azuread"
    }
  }

backend "azurerm" {
  resource_group_name   = "rg-hub-poc"
  storage_account_name  = "rghubpocweu"
  container_name        = "container-rghubpocweu-tfstate"
  key                   = "terraform.tfstate"
  #client_id             = "69d67aee-162e-4297-9011-7ac112a3a499"
  #client_secret         = "apo8Q~t8lRZv2ld6mUQh1wcLpcDueFGZgJKaXa4j"
  #tenant_id             = "cefa11ec-915a-41d2-8d9c-4ae774bf1229"
  subscription_id       = "69d67aee-162e-4297-9011-7ac112a3a499"
 }
}

provider "azurerm" {
    features {}

  #client_id       = "69d67aee-162e-4297-9011-7ac112a3a499"
  #client_secret   = "apo8Q~t8lRZv2ld6mUQh1wcLpcDueFGZgJKaXa4j"
  #tenant_id       = "cefa11ec-915a-41d2-8d9c-4ae774bf1229"
  subscription_id = "69d67aee-162e-4297-9011-7ac112a3a499"
}
