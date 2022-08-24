module "virtualnetwork" {
  for_each                        = local.env[terraform.workspace].virtual-networks
  source                          = "../../../Modules/network/virtualnetwork/"
  name                            = each.key
  resource_group_name             = each.value.resource_group_name
  cidr                            = each.value.cidr
}