variable "aks_name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "node_pool_name" {
  type = string
}

variable "node_pool_count" {
  type = number
}

variable "node_pool_vm_size" {
  type = string
}

variable "identity_type" {
  type = string
}

variable "aks_cr_name" {
  type = string
}

variable "sku_value" {
  type = string
}

variable "aks_acr_role_defn" {
  type = string
}
