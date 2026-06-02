terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.1.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "711e533a-2f13-498c-8d61-1c1dd88166ae"
  features {}
}

resource "azurerm_resource_group" "rg255" {
  name     = "mahesh-demo-rg"
  location = "East US"
}

