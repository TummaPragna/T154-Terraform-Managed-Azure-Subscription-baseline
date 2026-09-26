terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-baseline"
    storage_account_name = "stterraformbaseline01"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

    use_azuread_auth = true
  }
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
}