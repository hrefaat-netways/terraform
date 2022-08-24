module "public_ip" {
  for_each                        = local.env[terraform.workspace].public-ips
  source                          = "../../../Modules/network/publicip/"
  name                            = each.key
  resource_group_name             = each.value.resource_group_name
  sku                             = each.value.sku
  allocation_method               = each.value.allocation_method
}