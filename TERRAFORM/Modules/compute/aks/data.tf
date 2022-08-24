data "azurerm_subnet" "example" {
  name                 = var.data_node_subnet
  virtual_network_name = var.data_node_vnet
  resource_group_name  = var.resource_group_name
}
