resource "azurerm_sql_server" "sqlserver" {
  name                         = var.sql_server_name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  version                      = var.sql_server_version//"12.0"
  administrator_login          = var.sql_server_uname
  administrator_login_password = var.sql_server_password

}

resource "azurerm_storage_account" "storageacc" {
  name                         = var.storage_account_name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  account_tier                 = var.account_tier //"Standard"
  account_replication_type     = var.replica_type //"LRS"
}

resource "azurerm_sql_database" "sqldb" {
  name                         = var.sql_database_name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  server_name                  = azurerm_sql_server.sqlserver.name

}