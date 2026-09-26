variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for monitoring resources"
  type        = string
}

variable "workspace_name" {
  description = "Name of the Log Analytics Workspace"
  type        = string
}

variable "target_resource_id" {
  description = "ID of the resource to monitor"
  type        = string
}

variable "diagnostic_setting_name" {
  description = "Name of the diagnostic setting"
  type        = string
}