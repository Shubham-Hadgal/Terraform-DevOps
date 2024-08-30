provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = "1abf7039-62fb-4750-aaeb-00746889d30f"
}

data "azurerm_key_vault" "keyvault" {
  name                = "terraform-devops-kv"
  resource_group_name = "Terraform-Backend"
}

data "azurerm_key_vault_secret" "admin_username" {
  name         = "VM1-adminUsername"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

data "azurerm_key_vault_secret" "admin_password" {
  name         = "VM1-adminPassword"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

module "resource_group" {
  source              = "./modules/Resource-Group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "virtual_machine" {
  source              = "./modules/Virtual-Machine"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  subnet_name         = var.subnet_name
  nic_name            = var.nic_name
  vm_name             = var.vm_name
  admin_username      = data.azurerm_key_vault_secret.admin_username.value
  admin_password      = data.azurerm_key_vault_secret.admin_password.value
}

module "storage_account" {
  source                = "./modules/Storage-Account"
  resource_group_name   = module.resource_group.resource_group_name
  location              = var.location
  storage_account_name  = var.storage_account_name
}

terraform {
  backend "azurerm" {
    resource_group_name  = "Terraform-Backend"
    storage_account_name = "terraformbackendshubh"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
