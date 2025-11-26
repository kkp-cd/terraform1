# optional
resource "azurerm_key_vault_secret" "example_secret" {
  name         = "dbpassword"
  value        = "SuperSecretPassword123"
  key_vault_id = azurerm_key_vault.kv.id
}
