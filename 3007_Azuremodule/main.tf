module "virtual-machine_example_basic" {
  source  = "Azure/virtual-machine/azurerm//examples/basic"
  version = "2.0.0"


  create_public_ip      = true
  create_resource_group = true
  resource_group_name   = "Kiran-RG-Module"
  location              = "East US"
  size                  = "Standard_B1s"
}

