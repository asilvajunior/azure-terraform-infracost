terraform {
  backend "azurerm" {
    resource_group_name  = "rg-name"
    storage_account_name = "storage-name"
    container_name       = "container-name"
    key                  = "terraform.tfstate"
    access_key           = "storage-key"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.74.0, < 5.0.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}
