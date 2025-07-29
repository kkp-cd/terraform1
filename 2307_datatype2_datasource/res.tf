resource "random_string" "randomlist" {
  length = var.varlength[3]
}

resource "random_pet" "randomlist2" {
  prefix = var.varprefix[0]
}

resource "random_string" "randomset" {
  length = tolist(var.varlenset)[4]
}


resource "random_integer" "integer1" {
  min = 1
  max = var.integermax.abc[1]
}


resource "random_pet" "pettuple" {
  prefix = var.varpettuple[3][1]
}

resource "random_pet" "petobject" {
  prefix = var.varpetobject.address[2]
}

