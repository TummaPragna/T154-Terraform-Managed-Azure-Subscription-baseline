variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  default     = "rg-terraform-baseline"
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "Central India"
}