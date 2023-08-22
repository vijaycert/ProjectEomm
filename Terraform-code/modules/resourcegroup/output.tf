output "out_rg_name" {
    description = "Name of the resource group"
    value = azurerm_resource_group.resource_group.name
}

output "out_rg_location" {
    description = "Location Name of the resource group"
    value = azurerm_resource_group.resource_group.location
}