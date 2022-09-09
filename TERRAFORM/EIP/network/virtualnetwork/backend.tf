# Configure Terraform State Storage
terraform {
  backend "azurerm" {
    resource_group_name  = "rg-adxdev-eip_sandbox-uaen-001"
    storage_account_name = "teraformadx"
    container_name       = "tfsate"
    key                  = "network.terraform.tfstate"
  }
}
