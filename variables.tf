variable "region" {
  type    = string
  default = "eastus"

  validation {
    condition = contains(["eastus", "westus2", "westeurope"], var.region)
    error_message = "La ubicación debe ser una de las permitidas (eastus, westus2, westeurope)"
  }
}

variable "RG_name" {
  type    = string
  default = "RGTerraform"
}

variable "StorageAccount_name" {
  type    = string
  default = "azsaterraform"

  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.StorageAccount_name))
    error_message = "Nombre de Storage Account debe tener solo letras minúsculas y números, entre 3 y 24 caracteres"
  }
}