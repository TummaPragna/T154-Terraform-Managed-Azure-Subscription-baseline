output "identity_name" {
  description = "Name of the user-assigned managed identity"
  value       = azurerm_user_assigned_identity.this.name
}

output "identity_id" {
  description = "ID of the user-assigned managed identity"
  value       = azurerm_user_assigned_identity.this.id
}

output "principal_id" {
  description = "Principal ID of the managed identity"
  value       = azurerm_user_assigned_identity.this.principal_id
}

output "role_assignment_id" {
  description = "ID of the RBAC role assignment"
  value       = azurerm_role_assignment.this.id
}