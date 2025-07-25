terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tata-rg"
    storage_account_name = "shahedstorage123"
    container_name       = "shahed"
    key                  = "terraform.tfstate"
  }

}
provider "azurerm" {
  features {}
  subscription_id = "25a58ceb-2570-42e2-9d35-00b46979c51a"
}

