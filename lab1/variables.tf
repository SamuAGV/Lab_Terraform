variable "aplication_name" {
  description = "The name of the application"
  type        = string

  validation{
    condition     = length(var.project_name) >3 && length(var.project_name) <= 20 
    error_message = "Project name must be between 3 and 20 characters long."
  }
}

variable "environment" {
  description = "The environment of the application"
  type        = string

  validation {
    condition     = contains(
      ["dev", "staging", "prod"], 
      var.environment
      )

    error_message = "Environment must be one of 'dev', 'staging', or 'prod'."
  }  
}

variable "location" {
  description = "The location where the application will be deployed"
  type        = string
  default = "mexicocentral"
}

variable "vnet_address_space" {
  description = "Espacio de direcciones de red virtual"
  type = list(string)

  default = [
    "10.0.0.0/16"
  ]
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)

  default     = {
    managed_by  = "terraform"
  }
}


variable "length" {
  description = "The length of the string"
  type        = number
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
  default     = {
    "dev"     = "Development"
    "prod" = "Production"
  }
}


variable "application_config" {
  description = "Configuration for the application"
  type        = object({
    version        = string
    maintainer     = string
    dependencies   = list(string)
  })
  default = {
    version     = "1.0.0"
    maintainer  = "John Doe"
    dependencies = ["dependency1", "dependency2"]
  }
}


variable "allowed_networks" {
  description = "List of allowed networks"
  type        = set(string)
  default     = ["10.0.0.0/8","10.0.0.0/16"]
}