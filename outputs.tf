output "id_vnet" {
  value = module.terraform-azurerm-network.IDVnet
}

output "id_subnet" {
  value = module.terraform-azurerm-network.IDSubnet01
}

output "id_containerInstance" {
  value = module.terraform-azurerm-compute.ID_CI
}