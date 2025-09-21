resource "azurerm_resource_group" "RGTerraform" {
  name     = var.RG_name
  location = var.region
}

resource "azurerm_storage_account" "AZSATerraform" {
  name                     = var.StorageAccount_name
  resource_group_name      = azurerm_resource_group.RGTerraform.name
  location                 = azurerm_resource_group.RGTerraform.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}