variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "West Europe"
}

variable "resource_group_name" {
  description = "Azure Resource Group Name"
  type        = string
  default     = "my-resource-group"
}

variable "vnet_cidr" {
  description = "CIDR block for Azure Virtual Network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for Azure Subnet"
  type        = string
  default     = "10.0.1.0/24"
}
# Azure Variables
