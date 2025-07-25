variable "filename1" {
  default = "abc1.txt"
}
variable "filename2" {
  type    = string
  default = "xyz123.txt"
}
variable "filename3" {
  type    = bool
  default = true
}
variable "filename4" {
  type    = number
  default = 123
}
variable "content" {
  type    = any
  default = "content message"
}
