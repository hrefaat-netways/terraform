resource "azurerm_virtual_network_peering" "example-1" {
  name                      = var.name
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.vnet_name_1
  remote_virtual_network_id = data.azurerm_virtual_network.vnet_2.id
}

resource "azurerm_virtual_network_peering" "example-2" {
  name                      = var.name
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.vnet_name_2
  remote_virtual_network_id = data.azurerm_virtual_network.vnet_1.id
}
