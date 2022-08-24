resource "azurerm_public_ip" "public_ip" {
  name                =  var.name
  resource_group_name =  var.resource_group_name
  location            =  var.location
  sku                 =  var.sku
  allocation_method   =  var.allocation_method
}