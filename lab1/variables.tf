variable "aplication_name" {
  description = "The name of the application"
  type        = string
  default     = "integradora"
}

variable "environment" {
  description = "The environment of the application"
  type        = string
  default     = "dev"
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