resource "local_file" "f7" {
  filename = "abc7.txt"
  content  = "abc7 text message update"
}

resource "local_file" "f8" {
  filename = "abcf8.txt"
  content  = "abcf8 text message update2"
  lifecycle {
    ignore_changes = [content]
  }
}
