resource "azurerm_resource_group" "rg" {
  name     = "rg-tf-storage"
  location = "eastus"
}

resource "azurerm_storage_account" "storage" {
  name                     = "tfstorage${random_string.rand.result}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  min_tls_version = "TLS1_2"
}

resource "random_string" "rand" {
  length  = 6
  upper   = false
  special = false
  numeric = true
}

resource "azurerm_storage_container" "container" {
  name                  = "tfcontainer"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}
