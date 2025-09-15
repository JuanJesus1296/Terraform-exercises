output "StorageAccount_name" {
  value       = azurerm_storage_account.AZSATerraform.name
  description = "Nombre de Storage Account"
}

output "RG_name" {
  value       = azurerm_resource_group.RGTerraform.name
  description = "Nombre de Resource Group"
}