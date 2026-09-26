resource "azurerm_resource_group" "baseline" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Environment = "Development"
    Project     = "Terraform-Azure-Baseline"
    ManagedBy   = "Terraform"
  }
}
resource "azurerm_storage_account" "baseline" {
  name                     = "stterraformbaseline01"
  resource_group_name      = azurerm_resource_group.baseline.name
  location                 = "Southeast Asia"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = "Development"
    Project     = "Terraform-Azure-Baseline"
    ManagedBy   = "Terraform"
  }
}

module "network" {
  source = "./modules/network"

  resource_group_name     = azurerm_resource_group.baseline.name
  location                = "Southeast Asia"
  vnet_name               = "vnet-terraform-baseline"
  address_space           = ["10.0.0.0/16"]
  subnet_name             = "subnet-default"
  subnet_address_prefixes = ["10.0.1.0/24"]
  nsg_name                = "nsg-terraform-baseline"
}

module "compute" {
  source = "./modules/compute"

  resource_group_name    = azurerm_resource_group.baseline.name
  location               = "Southeast Asia"
  subnet_id              = module.network.subnet_id
  public_ip_name         = "pip-terraform-baseline"
  network_interface_name = "nic-terraform-baseline"
  virtual_machine_name   = "vm-terraform-baseline"
  vm_size                = "Standard_D2s_v4"
  admin_username         = "azureuser"
  ssh_public_key_path    = "~/.ssh/id_rsa.pub"
}

module "security" {
  source = "./modules/security"

  resource_group_name  = azurerm_resource_group.baseline.name
  location             = "Southeast Asia"
  identity_name        = "id-terraform-baseline"
  role_definition_name = "Reader"
}
module "monitoring" {
  source = "./modules/monitoring"

  resource_group_name     = azurerm_resource_group.baseline.name
  location                = "Southeast Asia"
  workspace_name          = "law-terraform-baseline"
  target_resource_id      = module.compute.virtual_machine_id
  diagnostic_setting_name = "vm-diagnostics"
}