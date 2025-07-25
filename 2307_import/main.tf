resource "random_string" "name" {
  length = 8
}
output "stringoutput" {
  value = random_string.name.id
}

