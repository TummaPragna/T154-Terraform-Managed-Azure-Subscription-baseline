output "virtual_network_id" {
  description = "ID of the virtual network"
  value       = azurerm_virtual_network.this.id
}

output "virtual_network_name" {
  description = "Name of the virtual network"
  value       = azurerm_virtual_network.this.name
}

output "subnet_id" {
  description = "ID of the subnet"
  value       = azurerm_subnet.this.id
}

output "subnet_name" {
  description = "Name of the subnet"
  value       = azurerm_subnet.this.name
}

output "network_security_group_id" {
  description = "ID of the network security group"
  value       = azurerm_network_security_group.this.id
}

output "network_security_group_name" {
  description = "Name of the network security group"
  value       = azurerm_network_security_group.this.name
}

output "virtual_network_address_space" {
  description = "Address space of the virtual network"
  value       = azurerm_virtual_network.this.address_space
}