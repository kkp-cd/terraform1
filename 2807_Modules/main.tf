module "m1" {
  source    = "./config"
  file11    = "module1.txt"
  content11 = "module1 content"
}

module "m2" {
  source    = "./config"
  file11    = "module2.txt"
  content11 = "module2 contnet"
}

output "m1file11" {
  value = module.m1.op1
}
output "m2file11" {
  value = module.m2.op1
}

module "m3" {
  source    = "../2407"
}


module "m4" {
  source    = "git::ssh://git@github.com/kkp-cd/terraform1.git//2807?ref=master"
}


