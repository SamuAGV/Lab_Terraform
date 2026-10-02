resource "random_string" "suffix" {
  length  = var.length
  special = true
} 

locals {
  unique_name = "${var.aplication_name}-${var.environment}-${random_string.suffix.result}"
  application_name = var.aplication_name
}