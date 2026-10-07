variable "project_name" {
  description = "The name of the project"
  type        = string
  validation {
    condition     = length(var.project_name) >= 5 && length(var.project_name) <= 20
    error_message = "The project name must be between 5 and 20 characters."
  }
}

variable "environment" {
    description = "The environment of the application"
    type        = string

    validation {
        condition     = contains(["dev", "qa", "prod"], var.environment)
        error_message = "The environment must be one of 'dev', 'staging', or 'prod'."
    }
}

variable "location" {
    description = "The location where the resources will be deployed"
    type        = string

    default     = "mexicocentral"
}

variable "vnet_address_space" {
    description = "The address space for the virtual network"
    type        = list(string)

    default     = ["10.0.0.0/16"]
}

variable "tags" {
    description = "A map of tags to assign to the resources"
    type        = map(string)

    default     = {managed_by = "Terraform"}
}

variable "suscription_id" {
    description = "The subscription ID where the resources will be created"
    type        = string
    default     = "3b1f5e3c-2d4a-4e5b-9f6c-8e7d9f0a1b2c"
    sensitive   = true
}