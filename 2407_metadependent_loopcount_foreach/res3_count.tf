variable "filename10" {
  type    = list(string)
  default = ["a1", "b1", "c1"]
}
resource "local_file" "f10" {
  count    = length(var.filename10)
  filename = var.filename10[count.index]
  content  = "test"
}


resource "local_file" "f11" {
	  filename = each.value
	  for_each = toset(var.filenamef11)
	  content  = "test"
}
variable filenamef11 {
	type = list(string)
	default = ["a1","b1","c1"]
}
