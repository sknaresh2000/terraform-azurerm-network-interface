variable "rg_name" {
  type        = string
  description = "The name of the resource group where the resources should be created"
}

variable "name" {
  type        = string
  description = "The name of the network interface to create"
}

variable "location" {
  type        = string
  description = "The location of network interface that will be created"
  default     = "eastus"
}

variable "dns_servers" {
  type        = list(string)
  description = "A list of IP Addresses defining the DNS Servers which should be used for this Network Interface."
  default     = null
}

variable "enable_ip_forwarding" {
  type        = bool
  description = "Should IP Forwarding be enabled? "
  default     = false
}

variable "tags" {
  type        = map(any)
  description = "Mapping of Tags"
}

variable "enable_accelerated_networking" {
  type        = bool
  description = "Should Accelerated Networking be enabled?"
  default     = false
}

variable "ip_configs" {
  type = map(object({
    subnet_id                     = string
    private_ip_address_allocation = string
    primary                       = bool
    private_ip_address            = string
  }))
  description = "Map of Ip configuration details that will be associated to this network interface"
}