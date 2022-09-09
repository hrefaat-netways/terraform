# Configure Terraform State Storage
terraform {
  backend "azurerm" {
    resource_group_name  = "Azure-Internal-RD-6202"
    storage_account_name = "teraformadx"
    container_name       = "tfsate"
    key                  = "aks.terraform.tfstate"
  }
}
