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
  
  subscription_id = "2d383b10-41b4-4814-a1b5-2b3d9946dc1b"
  tenant_id = "58a5f423-d654-4713-9407-dd52acaeee23"
  client_id = "7348940e-3881-4b17-baad-a01c6a9c22bd"
  client_secret = "pMN8Q~gKwI6IoYJ0VK0BkUHlnN6T6uv.~3tfadwq"
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "TFE2"
  location = "canadaeast"

  tags = {
    environment = "Production"
  }
}
