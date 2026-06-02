provider "azurerm" {
  subscription_id = "711e533a-2f13-498c-8d61-1c1dd88166ae"
  tenant_id       = var.tenant_id
  features {}
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
  sensitive   = true
}
