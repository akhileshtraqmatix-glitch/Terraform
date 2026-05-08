# resource "azurerm_resource_group" "using_foreach" {
#   for_each = (var.rg_panasonic)
#   name     = each.value
#   location = "eastus"
# }

resource "azurerm_resource_group" "using_map" {
  for_each = (var.rg_fruit)
  name     = each.value.name
  location = each.value.location

}