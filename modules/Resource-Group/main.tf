resource "azurerm_resource_group" "Terraform-DevOps" {
  name     = var.resource_group_name
  location = var.location
}
