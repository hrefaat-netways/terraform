module "aks" {
  for_each                        = local.env[terraform.workspace].aks.clusters
  source                          = "../../../Modules/compute/aks/"
  aks_name                        = each.key
  node_resource_group_name        = each.value.node_resource_group_name
  dns_prefix                      = each.value.dns_prefix
  data_pool_name                  = each.value.data_pool_name
  vm_system_size                  = each.value.vm_system_size
  vm_data_size                    = each.value.vm_data_size
  data_node_vnet                  = each.value.data_node_vnet
  data_node_subnet                = each.value.data_node_subnet
  data_node_count                 = each.value.data_node_count
}