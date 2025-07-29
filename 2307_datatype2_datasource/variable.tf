variable "varlength" {
  type    = list(number)
  default = [1, 2, 3, 4]
}


variable "varprefix" {
  type    = list(string)
  default = ["123", "str", "ing", "ban"]
}

variable "varlenset" {
  type    = set(number)
  default = [1, 2, 2, 2, 3, 4, 5]
}

variable "integermax" {
  type = map(list(number))
  default = {
    xyz = [1, 2, 3, 4, 5]
    abc = [7, 8, 9, 10]
  }
}

variable "varpettuple" {
  type    = tuple([string, number, bool, list(number)])
  default = ["test", 123, true, [123, 456, 789]]
}

variable "varpetobject" {
  type = object({
    name    = string
    count   = number
    address = list(string)
    pincode = number
    correct = bool
  })
  default = {
    name    = "cat"
    count   = 543
    address = ["Bangalore", "Karnataka", "560068"]
    pincode = 560068
    correct = true
  }
}
