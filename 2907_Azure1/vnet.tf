resource "azurerm_virtual_network" "example" {
  name     = var.vnetname
  location = var.location
  # resource_group_name = var.rgname
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.addressspace
}

variable "vnetname" {
  default = "vnettf-k"
}

variable "addressspace" {

  type    = list(string)
  default = ["10.10.0.0/16"]

}
