output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.baseline.name
}

output "resource_group_location" {
  description = "Location of the resource group"
  value       = azurerm_resource_group.baseline.location
}

output "storage_account_name" {
  description = "Name of the storage account"
  value       = azurerm_storage_account.baseline.name
}

output "virtual_network_name" {
  description = "Name of the virtual network"
  value       = module.network.virtual_network_name
}

output "virtual_network_address_space" {
  description = "Address space of the virtual network"
  value       = module.network.virtual_network_address_space
}

output "subnet_name" {
  description = "Name of the subnet"
  value       = module.network.subnet_name
}

output "network_security_group_name" {
  description = "Name of the network security group"
  value       = module.network.network_security_group_name
}

output "public_ip_address" {
  description = "Public IP address of the Linux VM"
  value       = module.compute.public_ip_address
}

output "network_interface_name" {
  description = "Name of the network interface"
  value       = module.compute.network_interface_name
}

output "virtual_machine_name" {
  description = "Name of the Linux virtual machine"
  value       = module.compute.virtual_machine_name
}