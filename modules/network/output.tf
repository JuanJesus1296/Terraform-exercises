output "IDVnet" {
  value = azurerm_virtual_network.VNTerraform.id
}

output "IDSubnet01" {
  value = azurerm_subnet.SNTerraform01.id
}