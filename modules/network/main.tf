resource "azurerm_virtual_network" "terraform_network" {
  name                = var.vnetName
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
}

