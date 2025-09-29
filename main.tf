resource "azurerm_resource_group" "RG_Terraform" {
  name     = "RG-Terraform"
  location = "West Europe"
}

resource "azurerm_storage_account" "STAC_Terraform" {
  for_each = var.storages

  name                     = each.value
  resource_group_name      = azurerm_resource_group.RG_Terraform.name
  location                 = azurerm_resource_group.RG_Terraform.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}