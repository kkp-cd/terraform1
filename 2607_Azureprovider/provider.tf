 terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  features {}
  #subscription_id = "sID"
  #client_id       = "cID"
  #client_secret   = "Secret"
  #tenant_id       = "tID"
}

resource azurerm_resource_group rg {
        location = "westus"
        name="testtf123"
}
