terraform {
  required_version = ">= 1.13.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "36b2cb85-9b3e-4a5f-8d85-a3a19ffe3ba6"
}
