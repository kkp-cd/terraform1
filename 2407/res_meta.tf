resource "local_file" "f1" {
  filename = "abc.txt"
  content  = "abc text message update"
  lifecycle {
    create_before_destroy = true
  }
}

resource "local_file" "f2" {
  filename = "abcf2.txt"
  content  = "abcf2 text message update"
}
resource "local_file" "f3" {
  filename = local_file.f1.id
  content  = local_file.f1.content
}


resource "local_file" "f4" {
  filename   = "file4.txt"
  content    = "Normal content, indirect dependency"
  depends_on = [local_file.f2]
}
resource "local_file" "f5" {
  filename   = "file5.txt"
  content    = "Normal content, indirect dependency on f2 f3"
  depends_on = [local_file.f2, local_file.f3]
}
