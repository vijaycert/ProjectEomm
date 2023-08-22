resource "azurerm_kubernetes_cluster" "tf_aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = var.node_pool_name
    node_count = var.node_pool_count
    vm_size    = var.node_pool_vm_size
  }

  http_application_routing_enabled = true 

  identity {
    type = var.identity_type
  }
  
}

resource "azurerm_container_registry" "tf_aks_cr" {
  name                = var.aks_cr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku_value

}

resource "azurerm_role_assignment" "tf_aks_role_assignment" {
  principal_id                     = azurerm_kubernetes_cluster.tf_aks.kubelet_identity[0].object_id
  role_definition_name             = var.aks_acr_role_defn
  scope                            = azurerm_container_registry.tf_aks_cr.id
  skip_service_principal_aad_check = true

  depends_on = [ azurerm_kubernetes_cluster.tf_aks, azurerm_container_registry.tf_aks_cr ]

}