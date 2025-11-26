# (Key Vault + Secret + Access Policy)
resource "azurerm_resource_group" "rg" {
  name     = "rg-tf-kv"
  location = "eastus"
}

resource "azurerm_key_vault" "kv" {
  name                        = "tfkv${random_string.rand.result}"
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"
  purge_protection_enabled    = false
  soft_delete_retention_days  = 7

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get", "List", "Create", "Delete"
    ]

    secret_permissions = [
      "Get", "List", "Set", "Delete"
    ]

    certificate_permissions = [
      "Get", "List", "Create", "Delete"
    ]
  }
}

resource "random_string" "rand" {
  length  = 6
  upper   = false
  special = false
  numeric = true
}

data "azurerm_client_config" "current" {}
