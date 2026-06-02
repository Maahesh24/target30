

provider "azurerm" {
  features {}
}


variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
  sensitive   = true
}
