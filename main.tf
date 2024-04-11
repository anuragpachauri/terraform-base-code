terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
provider "azurerm" {
  features {}
}

module "resourcegroup" {
  source              = "./modules/resourcegroup"
  name     = var.resource_group_name
  location = var.location
}


module "network" {
  source              = "./modules/network"
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
  vnetName            = var.vnetName
}

