
resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version
  node_resource_group = var.node_resource_group_name
  sku_tier = var.sku_tier

  default_node_pool {
    name                 = "systempool"
    vnet_subnet_id       = data.azurerm_subnet.example.id
    vm_size              = var.vm_system_size
    orchestrator_version = var.kubernetes_version
    node_count = var.system_node_count
    availability_zones   = [1, 2, 3]
    enable_auto_scaling  = false
    os_disk_size_gb      = 128
    type                 = "VirtualMachineScaleSets"
    node_labels = {
      "nodepool-type"    = "system"
      "environment"      = var.environment
      "nodepoolos"       = "linux"
      "app"              = "system-apps" 
    } 
   tags = {
      "nodepool-type"    = "system"
      "environment"      = var.environment
      "nodepoolos"       = "linux"
      "app"              = "system-apps" 
   } 
  }


# Identity (System Assigned or Service Principal)
  identity {
    type = "SystemAssigned"
  }

# Linux Profile

  linux_profile {
    admin_username = var.linux_username
    ssh_key {
      key_data = file(var.ssh_public_key)
    }
  }

# Network Profile
  network_profile {
    network_plugin = var.network_plugin
    network_policy = var.network_policy
    load_balancer_sku = var.load_balancer_sku
    outbound_type = var.outbound_type
  }

/*
  oms_agent{
    log_analytics_workspace_id= var.log_analytics_workspace_id
  }
*/
  tags = {
    Environment = var.environment
    owner = var.owner
    unit = var.unit_id
    project-id = var.project_id
  }
  
}
resource "azurerm_kubernetes_cluster_node_pool" "eip_data_pools" {
    name                  = var.data_pool_name
    kubernetes_cluster_id = azurerm_kubernetes_cluster.aks_cluster.id
    vm_size              = var.vm_system_size
    node_count           = var.data_node_count
    availability_zones   = [1, 2, 3]
    enable_auto_scaling  = false
    os_disk_size_gb      = 128
    node_labels = {
      "nodepool-type"    = "system"
      "environment"      = var.environment
      "nodepoolos"       = "linux"
      "app"              = "system-apps" 
    } 
   tags = {
      "nodepool-type"    = "system"
      "environment"      = var.environment
      "nodepoolos"       = "linux"
      "app"              = "system-apps" 
   } 
}