variable "location" {
  default = "eastus"
  type = string
}
variable "aks_name" {
  type = string
}
variable "node_resource_group_name" {
  type = string
}
variable "dns_prefix" {
  type = string
}
variable "data_pool_name" {
  type = string
}
variable "project_id" {
  default = "ADXDDX0101"
  type = string
}
variable "unit_id" {
  default = "6202"
  type = string
}
variable "owner" {
  default = "hussein"
  type = string
}
variable "linux_username" {
  default = "hussein"
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
variable "ssh_public_key" {
  default = "file.key.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"  
}
/*
variable "log_analytics_workspace_id" {
  description = "This variable defines the Slog_analytics_workspace_id"  
}
*/
variable "system_node_count" {
  default = 2
}
variable "data_node_count" {
  default = 2
}

variable "sku_tier" {
  default = "Free"
}

variable "kubernetes_version" {
  default = "1.23.8"
}

variable "vm_system_size" {
  default = "Standard_B8ms"
}
variable "vm_data_size" {
  default = "Standard_B8ms"
}
variable "network_plugin" {
  default = "azure"
}

variable "network_policy" {
  default = "calico"
}
variable "load_balancer_sku" {
  default = "Standard"
}
variable "outbound_type" {
  default = "loadBalancer"
}

variable "data_node_vnet" {
  type = string  
}
variable "data_node_subnet" {
  type = string  
}



