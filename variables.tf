# variables.tf

variable "resource_group_name" {
  description = "Name of the Azure resource group."

}

variable "location" {
  description = "Location for Azure resources."
}

variable "address_space" {
  description = "Address space for the virtual network."
}

variable "vnetName" {
  description = "virtual network name"
}


