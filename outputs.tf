output "name" {
  value = [for v in azurerm_storage_account.STAC_Terraform : v.name]
}