provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = "1abf7039-62fb-4750-aaeb-00746889d30f"
}


resource "azurerm_resource_group" "Terraform-DevOps" {
  name     = var.resource_group_name
  location = var.location
}
