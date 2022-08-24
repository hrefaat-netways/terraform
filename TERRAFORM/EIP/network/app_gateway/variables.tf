variable "location" {
  default = "eastus"
  type = string
}

variable "resource_group_name" {
  type = string
  description = "This variable defines the Resource Group"
  default = "Azure-Internal-RD-6202"
}

variable "environment" {
  type = string  
  description = "This variable defines the Environment"  
  default = "stg"
}