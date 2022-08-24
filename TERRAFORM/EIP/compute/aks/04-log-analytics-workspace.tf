/*

# Create Log Analytics Workspace
resource "azurerm_log_analytics_workspace" "insights" {
  name                = "EIP-logs-analytics-${var.environment}-${random_pet.aksrandom.id}"
  location            = var.location
  resource_group_name = var.resource_group_name
  retention_in_days   = 30

  
    tags = {
    Environment = "stg"
    owner = "hussein refaat"
    unit = "6202"
    project-id ="ADXDDX0101"
  }
}

*/