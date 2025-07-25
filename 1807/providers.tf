terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "<=2.5.2"
    }
    random = {
      source = "hashicorp/random"
    }
    azure = {
      source = "hashicorp/azurerm"
    }
  }
}
