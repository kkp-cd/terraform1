resource "local_file" "f111" {
  filename = var.filename1
  content  = var.content1
}

variable filename1 {
 default = "f111 file"
}
variable content1 {
 default = "f111 file content"
}
