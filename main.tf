resource "azurerm_network_interface" "nic" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.rg_name
  dns_servers                   = var.dns_servers
  enable_ip_forwarding          = var.enable_ip_forwarding
  enable_accelerated_networking = var.enable_accelerated_networking
  tags                          = var.tags

  dynamic "ip_configuration" {
    for_each = var.ip_configs
    content {
      name                          = each.value.ip_config_name
      subnet_id                     = each.value.subnet_id
      private_ip_address_allocation = each.value.private_ip_address_allocation
      primary                       = each.value.primary
      private_ip_address            = each.value.private_ip_address
    }
  }
}