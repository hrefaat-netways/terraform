resource "azurerm_virtual_network" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.cidr
  //dns_servers         = ["10.0.0.4", "10.0.0.5"]


}