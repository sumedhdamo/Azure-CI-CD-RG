provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "lab" {
  name     = var.rg_name
  location = var.location
}
