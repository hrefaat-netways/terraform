/*
resource "azurerm_virtual_network" "app_gw_virtualnetwork" {
  name                = "eip-${var.environment}-app_gw-network"
  resource_group_name = "Azure-Internal-RD-6202"
  location            = var.location
  address_space       = ["192.168.0.0/16"]
}
resource "azurerm_subnet" "frontend" {

  name                 = "eip-${var.environment}-frontend-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.app_gw_virtualnetwork.name
  address_prefixes     = ["192.168.1.0/24"]
}
*/
/*
resource "azurerm_public_ip" "public_ip" {
  name                = var.public_ip_name
  resource_group_name =  var.resource_group_name
  location            =  var.location
  sku                 = "Standard"
  allocation_method   = "Static"
}
*/
locals {
  backend_address_pool_name      = "eip-${var.environment}-beap"
  frontend_port_name             = "eip-${var.environment}-feport"
  frontend_ip_configuration_name = "eip-${var.environment}-feip"
  frontend_ip_configuration_name_private = "eip-${var.environment}-feip-private"
  http_setting_name              = "eip-${var.environment}-be-htst"
  listener_name                  = "eip-${var.environment}-httplstn"
  request_routing_rule_name      = "eip-${var.environment}-rqrt"
  redirect_configuration_name    = "eip-${var.environment}-rdrcfg"
}
resource "azurerm_application_gateway" "network" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

 sku {
    name     = var.sku_name
    tier     = var.sku_tier
    capacity = var.sku_capacity
  }
  gateway_ip_configuration {
    name      = "my-gateway-${var.environment}-ip-configuration"
    subnet_id = data.azurerm_subnet.example.id
  }

  frontend_port {
    name = local.frontend_port_name
    port = 80
  }

  frontend_ip_configuration {
    name                 = local.frontend_ip_configuration_name
    public_ip_address_id = data.azurerm_public_ip.example.id

  }

  
  frontend_ip_configuration {
    name                 = local.frontend_ip_configuration_name_private
    private_ip_address_allocation = var.private_ip_address_allocation
    private_ip_address = var.private_ip_address
    subnet_id = data.azurerm_subnet.example.id
  }
  backend_address_pool {
    name = local.backend_address_pool_name
  }
  backend_http_settings {
    name                  = local.http_setting_name
    cookie_based_affinity = "Disabled"
    path                  = "/path1/"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 60
  }

  http_listener {
    name                           = local.listener_name
    frontend_ip_configuration_name = local.frontend_ip_configuration_name_private
    frontend_port_name             = local.frontend_port_name
    protocol                       = "Http"
  }

  request_routing_rule {
    name                       = local.request_routing_rule_name
    rule_type                  = "Basic"
    priority                   = "500"
    http_listener_name         = local.listener_name
    backend_address_pool_name  = local.backend_address_pool_name
    backend_http_settings_name = local.http_setting_name
  }
}