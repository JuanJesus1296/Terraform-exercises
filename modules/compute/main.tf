resource "azurerm_container_group" "CI_Terraform" {
  name                = "terraform-container-group"
  location            = var.VNTerraform_location
  resource_group_name = var.RGTerraform_name
  ip_address_type     = "Private"
  subnet_ids          = var.CITerraform_subnet
  os_type             = "Linux"

  container {
    name   = var.CITerraform_container_name
    image  = var.CITerraform_container_image
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 443
      protocol = "TCP"
    }
  }
}