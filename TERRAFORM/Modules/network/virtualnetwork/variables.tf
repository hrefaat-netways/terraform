variable "location" {
  default = "eastus"
  type = string
}

variable "name" {
  type = string
}

variable "cidr" {
  type        = list(string)
  default     = []
}

variable "resource_group_name" {
  type = string  
  description = "This variable defines the Environment"  
  default = "Azure-Internal-RD-6202"
}
