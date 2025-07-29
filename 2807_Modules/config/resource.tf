resource "local_file" "f11" {
  filename = var.file11
  content  = var.content11
}
variable "file11" {
  default = "test.txt"
}
variable "content11" {
  default = "default content from variable"
}
output "op1" {
  value = local_file.f11.id
}

