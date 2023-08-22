module "resource_group" {
  source      = "../../modules/resourcegroup"
  rg_name     = "eComm_resource_group"
  rg_location = "ukwest"
}

module "sql" {
  depends_on          = [module.resource_group]
  source              = "../../modules/database"
  sql_server_name = "ecommsqlserver"
  location            = module.resource_group.out_rg_location
  resource_group_name = module.resource_group.out_rg_name
  sql_server_version  = "12.0"
  sql_server_uname    = "sqladmin"
  sql_server_password = "eComm_admin"

  storage_account_name = "ecommstore1"
  account_tier         = "Standard"
  replica_type         = "LRS"

  sql_database_name = "eComm_db"
}

module "aks" {
  depends_on          = [module.resource_group]
  source              = "../../modules/aks"
  aks_name            = "eCommakscluster"
  location            = module.resource_group.out_rg_location
  resource_group_name = module.resource_group.out_rg_name
  dns_prefix          = "eCommaks"

  node_pool_name    = "default"
  node_pool_count   = 1
  node_pool_vm_size = "Standard_D2_v2"
  identity_type     = "SystemAssigned"

  aks_cr_name       = "ecommacr"
  sku_value         = "Standard"
  aks_acr_role_defn = "AcrPull"

}