variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "ccd-terraform-demo"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
  default     = "Standard_B2s"
  //default = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "Admin username for VM"
  type        = string
  default     = "ccdadmin"
}

variable "admin_password" {
  description = "Admin password for VM"
  type        = string
  default     = "P@$$w0rd1234!"
}