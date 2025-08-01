resource "azurerm_subnet" "example" {
  name                 = var.subnetname
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = var.addressprefixes
}

variable "subnetname" {
  default = "subnettf"
}

variable "addressprefixes" {
  type    = list(string)
  default = ["10.10.10.0/24", "10.10.20.0/24"]
}
