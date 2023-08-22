terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }

  /*backend "azurerm" {
    resource_group_name  = "NetworkWatcherRG"
    storage_account_name = "eCommStore1"
    container_name       = "eCommtfstate"
    key                  = "terraform.tfstate"
  }*/
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
}