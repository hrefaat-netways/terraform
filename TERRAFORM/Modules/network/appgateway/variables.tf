variable "location" {
  default = "eastus"
  type = string
}
variable "name" {
  type = string
}
variable "public_ip_name" {
  type = string
}
variable "subnet_name" {
  type = string
}
variable "virtual_network_name" {
  type = string
}

variable "sku_name" {
  default = "Standard_v2"
  type = string
}
variable "sku_tier" {
  default = "Standard_v2"
  type = string
}
variable "sku_capacity" {
  default = 2
  type = string
}
variable "environment" {
  type = string
}
variable "resource_group_name" {
  type = string
  description = "This variable defines the Resource Group"
  default = "Azure-Internal-RD-6202"
}
variable "private_ip_address_allocation" {
  type = string
  default = "static"

}

variable "private_ip_address" {
  type = string
}

