variable "RGTerraform_name" {
  type    = string
  default = "RGTerraform"
}

variable "VNTerraform_location" {
  type = string
}

variable "CITerraform_subnet" {
  type = set(string)
}

variable "CITerraform_container_name" {
  type = string
}

variable "CITerraform_container_image" {
  type = string
}