terraform {
  backend "azurerm" {
    resource_group_name  = "rg-ccd-terraform-infracost"
    storage_account_name = "ccdterraformstate"
    container_name       = "terraform"
    key                  = "cicd.tfstate"
    access_key           = "xvNaJdX+UtOe+JluzJU9dAGCXNR9ps+sdJy8CCOpCv9AHCSWQ9nkbMNd7lqEhOTXXSwx7KT3ekES+AStwIf8Wg=="
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.74.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}