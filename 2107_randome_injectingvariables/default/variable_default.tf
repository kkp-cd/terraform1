#Input variables
variable "base_name" {
  description = "Base name for resource naming"
  type        = string
  default     = "app"
}
# Resources
resource "random_id" "suffix" {
  byte_length = 4
  keepers = { # regen if base_name changes
    base = var.base_name
  }
}
#Output variable
output "random_output_id" {
  value = random_id.suffix.id
}

