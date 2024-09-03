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

variable "delete_os_disk_on_termination" {
  description = "delete_os_disk_on_termination"
  type = bool
}

variable "delete_data_disks_on_termination" {
  description = "delete_data_disks_on_termination"
  type = bool
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "admin_username" {
  description = "The admin username for the virtual machine"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the virtual machine"
  type        = string
}
