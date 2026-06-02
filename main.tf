terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.1.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg255" {
  name     = "mahesh-demo-rg"
  location = "East US"
}

resource "azurerm_storage_account" "sa255" {
  name                     = "maheshstorageacct255"
  resource_group_name      = azurerm_resource_group.rg255.name
  location                 = azurerm_resource_group.rg255.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
