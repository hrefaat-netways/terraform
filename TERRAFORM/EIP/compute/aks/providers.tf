terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"

    }
  }

}
provider "azurerm" {
  features {

  }
}
resource "random_pet" "aksrandom" {
}
