terraform {
  backend "azurerm" {
    resource_group_name  = "tf-state-rg"
    storage_account_name = "tfstatestore123"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
