variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for compute resources"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet for the VM"
  type        = string
}

variable "public_ip_name" {
  description = "Name of the public IP"
  type        = string
}

variable "network_interface_name" {
  description = "Name of the network interface"
  type        = string
}

variable "virtual_machine_name" {
  description = "Name of the Linux virtual machine"
  type        = string
}

variable "vm_size" {
  description = "Size of the Linux virtual machine"
  type        = string
}

variable "admin_username" {
  description = "Administrator username"
  type        = string
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key"
  type        = string
}