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

    default     = "chilecentral"
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

variable "subscription_id" {
    description = "The subscription ID where the resources will be created"
    type        = string
    default     = "36b2cb85-9b3e-4a5f-8d85-a3a19ffe3ba6"
    sensitive   = true
}