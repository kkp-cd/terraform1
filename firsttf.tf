resource "local_file" "filecreation" {
  filename = "test.txt"
  content  = "This is my first tf code, change"
}
