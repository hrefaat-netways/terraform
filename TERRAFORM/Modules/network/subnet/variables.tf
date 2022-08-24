
variable "name" {
  type = string
}
variable "virtual_network_name" {
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
