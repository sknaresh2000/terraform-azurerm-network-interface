output "id" {
  value       = azurerm_network_interface.nic.id
  description = "The ID of the Network Interface."
}

output "private_ip_address" {
  value       = azurerm_network_interface.nic.private_ip_address
  description = "The first private IP address of the network interface."
}

output "private_ip_addresses" {
  value       = azurerm_network_interface.nic.private_ip_addresses
  description = "The private IP addresses of the network interface."
}