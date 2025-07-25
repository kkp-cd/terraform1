resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'Hello from null_resource'"
  }

  triggers = {
    always_run = timestamp()  # Changes every apply
  }
}

