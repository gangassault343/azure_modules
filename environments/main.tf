
resource "azurerm_resource_group" "rg" {
  name     = "dev-rg"
  location = "East US"
}

module "network" {
  source    = "../../modules/network"
  vnet_name = "dev-vnet"
  location  = "East US"
  rg_name   = azurerm_resource_group.rg.name
}

module "compute" {
  source    = "../../modules/compute"
  location  = "East US"
  rg_name   = azurerm_resource_group.rg.name
  subnet_id = module.network.subnet_id
}
