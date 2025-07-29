#Resource
resource "local_file" "fileset" {
  filename = tolist(var.filename1set)[2]
  content  = var.content3
}
#variable
variable "filename1set" {
  type = set(number)
  default = [1,2,2,2,3,4,5]
}

variable "content3" {
  type    = any
  default = "this this for setnum practice"
}

