## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_interface.nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_servers"></a> [dns\_servers](#input\_dns\_servers) | A list of IP Addresses defining the DNS Servers which should be used for this Network Interface. | `list(string)` | `null` | no |
| <a name="input_enable_accelerated_networking"></a> [enable\_accelerated\_networking](#input\_enable\_accelerated\_networking) | Should Accelerated Networking be enabled? | `bool` | `false` | no |
| <a name="input_enable_ip_forwarding"></a> [enable\_ip\_forwarding](#input\_enable\_ip\_forwarding) | Should IP Forwarding be enabled? | `bool` | `false` | no |
| <a name="input_ip_configs"></a> [ip\_configs](#input\_ip\_configs) | Map of Ip configuration details that will be associated to this network interface | <pre>map(object({<br>    subnet_id                     = string<br>    private_ip_address_allocation = string<br>    primary                       = bool<br>    private_ip_address            = string<br>  }))</pre> | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location of network interface that will be created | `string` | `"eastus"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the network interface to create | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | The name of the resource group where the resources should be created | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Mapping of Tags | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Network Interface. |
| <a name="output_private_ip_address"></a> [private\_ip\_address](#output\_private\_ip\_address) | The first private IP address of the network interface. |
| <a name="output_private_ip_addresses"></a> [private\_ip\_addresses](#output\_private\_ip\_addresses) | The private IP addresses of the network interface. |
