provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}


resource "azurerm_resource_group" "Terraform-DevOps" {
  name     = var.resource_group_name
  location = var.location
}
