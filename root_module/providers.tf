terraform {
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "4.57.0"
      }
    }
}

provider "azurerm" {
    features{}
    subscription_id = "01f21eee-bb54-414a-be2d-2c52eb70a68c"
  
}