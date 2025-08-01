terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "5fd92075-bce6-4a41-ba79-266a440ff078"

}
