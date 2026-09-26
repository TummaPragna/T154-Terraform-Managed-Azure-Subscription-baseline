resource "azurerm_user_assigned_identity" "this" {
  name                = var.identity_name
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    Environment = "Development"
    Project     = "Terraform-Azure-Baseline"
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_role_assignment" "this" {
  principal_id         = azurerm_user_assigned_identity.this.principal_id
  role_definition_name = var.role_definition_name
  scope                = "/subscriptions/${data.azurerm_client_config.current.subscription_id}/resourceGroups/${var.resource_group_name}"
}

data "azurerm_client_config" "current" {}