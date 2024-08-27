provider "azurerm" {
  features {}
  subscription_id = "1abf7039-62fb-4750-aaeb-00746889d30f"
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
  admin_username      = var.admin_username
  admin_password      = var.admin_password
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
