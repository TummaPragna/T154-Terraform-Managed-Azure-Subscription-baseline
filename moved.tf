moved {
  from = azurerm_virtual_network.baseline
  to   = module.network.azurerm_virtual_network.this
}

moved {
  from = azurerm_subnet.baseline
  to   = module.network.azurerm_subnet.this
}

moved {
  from = azurerm_network_security_group.baseline
  to   = module.network.azurerm_network_security_group.this
}

moved {
  from = azurerm_network_security_rule.allow_http
  to   = module.network.azurerm_network_security_rule.allow_http
}

moved {
  from = azurerm_network_security_rule.allow_ssh
  to   = module.network.azurerm_network_security_rule.allow_ssh
}

moved {
  from = azurerm_subnet_network_security_group_association.baseline
  to   = module.network.azurerm_subnet_network_security_group_association.this
}

moved {
  from = azurerm_public_ip.baseline
  to   = module.compute.azurerm_public_ip.this
}

moved {
  from = azurerm_network_interface.baseline
  to   = module.compute.azurerm_network_interface.this
}

moved {
  from = azurerm_linux_virtual_machine.baseline
  to   = module.compute.azurerm_linux_virtual_machine.this
}

moved {
  from = azurerm_user_assigned_identity.vm_identity
  to   = module.security.azurerm_user_assigned_identity.this
}

moved {
  from = azurerm_role_assignment.vm_reader
  to   = module.security.azurerm_role_assignment.this
}

moved {
  from = azurerm_log_analytics_workspace.baseline
  to   = module.monitoring.azurerm_log_analytics_workspace.this
}

moved {
  from = azurerm_monitor_diagnostic_setting.vm
  to   = module.monitoring.azurerm_monitor_diagnostic_setting.this
}