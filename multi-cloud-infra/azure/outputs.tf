output "resource_group" {
  description = "Azure Resource Group Name"
  value       = azurerm_resource_group.main.name
}

output "vnet_name" {
  description = "Azure Virtual Network Name"
  value       = azurerm_virtual_network.main.name
}

output "subnet_name" {
  description = "Azure Subnet Name"
  value       = azurerm_subnet.main.name
}
