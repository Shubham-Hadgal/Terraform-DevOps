variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "nic_name" {
  description = "The name of the network interface"
  type        = string
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}

# variable "admin_username" {
#   description = "The admin username for the virtual machine"
#   type        = string
# }

# variable "admin_password" {
#   description = "The admin password for the virtual machine"
#   type        = string
#   sensitive = true
# }

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

# variable "backend_resource_group_name" {
#   description = "The name of the resource group for the backend"
#   type        = string
# }

# variable "backend_storage_account_name" {
#   description = "The name of the storage account for the backend"
#   type        = string
# }

# variable "backend_container_name" {
#   description = "The name of the container for the backend"
#   type        = string
# }

# variable "backend_key" {
#   description = "The key for the backend state file"
#   type        = string
# }
