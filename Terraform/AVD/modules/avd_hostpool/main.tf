resource "azurerm_virtual_desktop_host_pool" "hostpool" {
  name                   = var.hostpool_name
  location               = var.location
  resource_group_name    = var.resource_group_name
  friendly_name          = var.hostpool_name
  # validation_environment = false
  load_balancer_type     = var.load_balancer_type
  type = "Pooled"  # Pooled ou Personal

  tags = {
    environment = "dev"
  }
}

resource "azurerm_virtual_desktop_application_group" "app_group" {
  name                = "my-app-group"
  location            = var.location
  resource_group_name = var.resource_group_name
  host_pool_id        = azurerm_virtual_desktop_host_pool.hostpool.id
  type                = "Desktop"
}

resource "azurerm_virtual_desktop_workspace" "workspace" {
  name                = "my-avd-workspace"
  location            = var.location
  resource_group_name = var.resource_group_name
  
  friendly_name = "FriendlyName"
  description   = "A description of my workspace"
  #application_group_ids = [
    #azurerm_virtual_desktop_application_group.app_group.id
  #]
}
