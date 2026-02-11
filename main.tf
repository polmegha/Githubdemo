terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }
}

provider "azurerm" {
  features {}
}
#resource group

resource "azurerm_resource_group" "rg1" {
  name     = "rg-dev-002"
  location = "centralindia"
}


#storage 
resource "azurerm_storage_account" "tfstate" {
  name                     = "tfrgdev002"   # must be globally unique
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  # enable_https_traffic_only = true

  tags = var.tags
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}

 #Virtual Network 
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-dev-002"
  address_space       = ["10.10.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg1.name
  tags                = var.tags
}

#---------------new


