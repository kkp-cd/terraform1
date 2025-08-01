resource "azurerm_ssh_public_key" "example" {
  name                = var.sshkey
  resource_group_name = azurerm_resource_group.example.name
  location            = var.location
  public_key          = file("~/.ssh/id_rsa.pub")
}
variable "sshkey" {
  default = "sshkey-tf"
}

