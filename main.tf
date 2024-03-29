terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features{}
  
  subscription_id = "b"
  tenant_id = ""
  client_id = ""
  client_secret = ""
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "TFE2"
  location = "canadaeast"

  tags = {
    environment = "Production"
  }
}
