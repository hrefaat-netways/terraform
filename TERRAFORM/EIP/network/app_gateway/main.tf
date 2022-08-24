module "app_gateway" {
  for_each                        = local.env[terraform.workspace].app_gateway
  source                          = "../../../Modules/network/appgateway/"
  name                            = each.key
  resource_group_name             = each.value.resource_group_name
  public_ip_name                  = each.value.public_ip_name     
  environment                     = each.value.environment      
  subnet_name                     = each.value.subnet_name
  virtual_network_name            = each.value.virtual_network_name
  private_ip_address              = each.value.private_ip_address
}