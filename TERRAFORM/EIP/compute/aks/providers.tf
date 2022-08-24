# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "~> 2.0"
#     }
#     random = {
#       source  = "hashicorp/random"
#       version = "~> 3.0"

#     }
#   }

# }
# provider "azurerm" {
#   features {

#   }
# }
# resource "random_pet" "aksrandom" {
# }







# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "e9c6df82-43a6-4361-8b5c-cd513685057e"
  client_id       = "b38f6df6-9da9-4c8c-92a1-65bddac48414"
  client_secret   = "oxo8Q~7QHDpkrjYnbKQmzXf8FB4fZQIzUGp4Zbhx"
  tenant_id       = "2ab2b5d0-18af-4aa0-9010-cb69d0c7b92f"
}
resource "random_pet" "aksrandom" {
}
