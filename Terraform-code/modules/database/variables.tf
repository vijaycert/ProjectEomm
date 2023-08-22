variable "sql_server_name" {
    type = string
    description = "Name of the Sql Server"
}

variable "sql_server_version" {
    type = string
    description = "Version of the Sql Server"
}

variable "sql_server_uname" {
    type = string
    description = "Username of the Sql Server"
}

variable "sql_server_password" {
    type = string
    sensitive = true
    description = "Password of the Sql Server"
}

variable "storage_account_name" {
    type = string
    description = "Name of the storage account"
}

variable "account_tier" {
    type = string
    description = "Account tier for Storage account"
}

variable "replica_type" {
    type = string
    description = "Replica type for the storage account"
}

variable "sql_database_name" {
    type = string
    description = "Name of the Sql Database"
}

variable "resource_group_name" {
    type = string
    description = "Name of the resource group"
}

variable "location" {
    type = string
    description = "Location of the resource group"
}