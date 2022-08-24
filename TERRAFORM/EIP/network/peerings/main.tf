module "subnets" {
  for_each                        = local.env[terraform.workspace].peerings
  source                          = "../../../Modules/network/peerings/"
  name                            = each.key
  resource_group_name             = each.value.resource_group_name
  vnet_name_1                     = each.value.vnet_name_1
  vnet_name_2                     = each.value.vnet_name_2


}