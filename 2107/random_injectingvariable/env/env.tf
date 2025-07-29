#Input variables
variable "base_name" {
  description = "Base name for resource naming"
  type        = string
  default     = "app"
}
# Resources
resource "random_pet" "pets" {
   prefix    = var.base_name
  length    = 2
  separator = "-"
}

#Output variable
output "random_pet_name" {
  value = random_pet.pets.id
}

