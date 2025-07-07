terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.80"  # You can adjust to the latest stable if needed
    }
  }

  required_version = ">= 1.3.0"
}

provider "azurerm" {
  features {}
}
