import {
  id = "/subscriptions/05b9fccf-7957-45d9-8014-9c0a216f8705/resourceGroups/cert-az-104"
  to = azurerm_resource_group.RGTerraform
}

resource "azurerm_resource_group" "RGTerraform" {
  name = var.RG_name
  location = "eastus"
}