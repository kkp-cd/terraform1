resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}

variable "rgname" {
  default = "terraformrg-k"
}

variable "location" {
  default = "West US"
}

