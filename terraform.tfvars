resource_group_name         = "Terraform-DevOps"
location                    = "East US"
vnet_name                   = "terraform-devops-vnet"
subnet_name                 = "terraform-devops-subnet"
nic_name                    = "vm-nic"
vm_name                     = "TerraformDevOpsVM"
# admin_username              = ""
# admin_password              = ""
storage_account_name        = "terraformdevopsvmstg"
# backend_resource_group_name = "AM-Terraform"
# backend_storage_account_name = "terraformbackendshubh"
# backend_container_name      = "tfstate"
# backend_key                 = "terraform.tfstate"
delete_data_disks_on_termination = true
delete_os_disk_on_termination = true
