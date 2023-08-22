variable "nsg_name" {
  type = string
  description = "name of the network security group"
}

variable "vnet_name" {
  type = string
  description = "name of the virtual network"
}

variable "addr_space" { }

variable "subnets" {
  type = list(object({
    name = string
    prefix = string
    security_group = string
  }))
}

variable "rg_name" {
    type = string
    description = "resource group name"
}

variable "rg_location" {
    type = string
    description = "name of the resource group location"
}

