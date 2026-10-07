variable "aplication_name" {
  description = "The name of the application"
  type        = string
  default     = "integradora"
}

variable "project_name" {
  description = "The name of the project"
  type        = string

  validation {
    condition     = length(var.project_name) >= 3 && length(var.project_name) <= 20
    error_message = "The project name must not be empty."
  }
}

variable "environment" {
  description = "The environment of the application"
  type        = string
  default     = "dev"
}



variable "enable_monitoring" {
  description = "Enable monitoring for the application"
  type        = bool
  default     = false
}

variable "region" {
  description = "The region where the application will be deployed"
  type        = list(string)
  default     = ["us-east-1", "us-west-2"]
}

variable "environment_tags" {
  description = "Tags for the environment"
  type        = map(string)
  default = {
    "dev"  = "Development"
    "prod" = "Production"
  }
}


variable "application_config" {
  description = "Configuration for the application"
  type = object({
    version      = string
    maintainer   = string
    dependencies = list(string)
  })
  default = {
    version      = "1.0.0"
    maintainer   = "John Doe"
    dependencies = ["dependency1", "dependency2"]
  }
}


variable "allowed_networks" {
  description = "List of allowed networks"
  type        = set(string)
  default     = ["10.0.0.0/16", "10.0.0.0/16"]
}

variable "location" {
  description = "The location where the resources will be created"
  type        = string
  default     = "chilecentral"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)

  default = [
    "10.0.0.0/16"
  ]
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    managed_by  = "terraform"
    owner       = "it"
    cost_center = "integradora"
  }
}