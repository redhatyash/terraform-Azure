terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.58.0"
    }
  }
}

provider "azurerm" {
    features {
    }
  # Configuration options

    # subscription_id = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    # client_id       = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    # client_secret   = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    # tenant_id       = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}