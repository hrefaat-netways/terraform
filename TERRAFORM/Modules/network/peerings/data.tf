data "azurerm_virtual_network" "vnet_1" {
  name                = var.vnet_name_1
  resource_group_name = var.resource_group_name
}
data "azurerm_virtual_network" "vnet_2" {
  name                = var.vnet_name_2
  resource_group_name = var.resource_group_name
}
