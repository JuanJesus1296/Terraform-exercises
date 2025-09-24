output "third_resource" {
  value = azurerm_resource_group.RGTerraform[2].name
}

output "all_resources" {
  value = azurerm_resource_group.RGTerraform[*].name
}