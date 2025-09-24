resource "azurerm_resource_group" "RGTerraform" {

  count = length(var.departamentos)

  name     = "RG-${var.departamentos[count.index]}"
  location = "East US 2"
}