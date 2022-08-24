module "subnets" {
  for_each                        = local.env[terraform.workspace].subnets
  source                          = "../../../Modules/network/subnet/"
  name                            = each.key
  resource_group_name             = each.value.resource_group_name
  virtual_network_name            = each.value.virtual_network_name
  cidr                            = each.value.cidr

}