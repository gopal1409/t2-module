provider "azurerm" {
  features {}
}


  #alias = "provider2-westus"
  #cleintid="XXXXX"
  ##clientsecret = "YYYY"
  #environment = "us2"
  #"subscription_id"="1221212"

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #source = "hashicorp/aws"
      #version = "2.40.0"
    }
  }
  
}




