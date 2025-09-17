resource "azurerm_resource_group" "RGTerraform" {
  name     = var.RGTerraform_name
  location = var.RGTerraform_region
}

module "terraform-azurerm-network" {
  source = "./modules/network"

  RGTerraform_name     = azurerm_resource_group.RGTerraform.name
  VNTerraform_name     = var.VNTerraform_name
  VNTerraform_location = var.VNTerraform_location
  SNTerraform01_name   = var.SNTerraform01_name
  VNTerraform_cidr     = var.VNTerraform_cidr
  SNTerraform01_cidr   = var.SNTerraform01_cidr
}

module "terraform-azurerm-compute" {
  source = "./modules/compute"

  VNTerraform_location        = var.VNTerraform_location
  CITerraform_subnet          = [module.terraform-azurerm-network.IDSubnet01]
  CITerraform_container_name  = var.CITerraform_container_name
  CITerraform_container_image = var.CITerraform_container_image
}