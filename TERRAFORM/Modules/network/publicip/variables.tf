variable "location" {
  default = "eastus"
  type = string
}
variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string  
  description = "This variable defines the Environment"  
  default = "Azure-Internal-RD-6202"
}

variable "sku" {
  type = string  
  default = "Standard"
}

variable "allocation_method" {
  type = string  
  default = "Static"
}

