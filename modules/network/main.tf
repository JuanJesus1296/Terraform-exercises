resource "azurerm_virtual_network" "VNTerraform" {
  name                = var.VNTerraform_name
  location            = var.VNTerraform_location
  resource_group_name = var.RGTerraform_name
  address_space       = var.VNTerraform_cidr
}

resource "azurerm_subnet" "SNTerraform01" {
  name                 = var.SNTerraform01_name
  resource_group_name  = var.RGTerraform_name
  virtual_network_name = azurerm_virtual_network.VNTerraform.name
  address_prefixes     = var.SNTerraform01_cidr

  delegation {
    name = "delegation"

    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
    }
  }
}