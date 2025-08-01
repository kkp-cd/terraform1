resource "azurerm_virtual_network" "example" {
  name     = var.vnetname
  location = var.location
  # resource_group_name = var.rgname
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.10.0.0/16"]
}

variable "vnetname" {
  default = "vnettf-k"
}
