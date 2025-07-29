terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}


resource "local_file" "file1" {
  filename = "${path.module}/jenkins_dir/file1.txt"
  content  = var.content
}


resource "local_file" "file2" {
  filename = "${path.module}/jenkins_dir2/file2.txt"
  content  = var.content2
}


