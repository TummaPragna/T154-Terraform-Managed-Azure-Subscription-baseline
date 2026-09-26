variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the managed identity"
  type        = string
}

variable "identity_name" {
  description = "Name of the user-assigned managed identity"
  type        = string
}

variable "role_definition_name" {
  description = "Azure RBAC role assigned to the identity"
  type        = string
}