variable "RGTerraform_name" {
  type    = string
  default = "RGTerraform"
}

variable "VNTerraform_location" {
  type    = string
  default = "East US 2"
}

variable "VNTerraform_name" {
  type    = string
  default = "terraform-network"
}

variable "SNTerraform01_name" {
  type    = string
  default = "terraform-subnet-01"
}

variable "VNTerraform_cidr" {
  type    = list(string)
  default = ["10.0.0.0/8"]
}

variable "SNTerraform01_cidr" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}
