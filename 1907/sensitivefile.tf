provider "local"  {}
resource "local_sensitive_file" "secret" {
  filename = "secret.txt"
  content  = "secret_value"
}
