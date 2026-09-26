output "public_ip_address" {
  description = "Public IP address of the VM"
  value       = azurerm_public_ip.this.ip_address
}

output "public_ip_id" {
  description = "ID of the public IP"
  value       = azurerm_public_ip.this.id
}

output "network_interface_name" {
  description = "Name of the network interface"
  value       = azurerm_network_interface.this.name
}

output "network_interface_id" {
  description = "ID of the network interface"
  value       = azurerm_network_interface.this.id
}

output "virtual_machine_name" {
  description = "Name of the Linux virtual machine"
  value       = azurerm_linux_virtual_machine.this.name
}

output "virtual_machine_id" {
  description = "ID of the Linux virtual machine"
  value       = azurerm_linux_virtual_machine.this.id
}