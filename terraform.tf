terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Chokeco"

    workspaces {
      name = "learn-terraform"
    }
  }
}

provider "azurerm" {
  features {

  }
}


