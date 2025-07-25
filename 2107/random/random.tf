#Input variables
variable "petname" {
default     = "app"
}

# Resources
resource "random_pet" "my_pet" {
  prefix = var.petname
  length = 2
}
#Output variable
output "random_pet_name" {
  value = random_pet.my_pet.id
}

