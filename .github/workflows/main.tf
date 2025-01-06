module "avd_hostpool" {
  source              = "../../../../modules/avd_hostpool"
  resource_group_name = var.resource_group_name
  location            = var.location
  hostpool_name       = var.hostpool_name
  load_balancer_type  = var.load_balancer_type
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
