resource "azurerm_resource_group" "rg-block" {
  name     = "shahed-rg"
  location = "central india"

}

resource "azurerm_resource_group" "rg-block2" {
  name     = "demo-rg"
  location = "central india" # ya jo bhi actual location ho
}

resource "azurerm_virtual_network" "vnetblock" {
  name                = "demo-vnet"
  location            = "Central India"
  resource_group_name = "demo-rg"
  address_space       = ["10.0.0.0/16"]
}
esource "azurerm_virtual_network" "vnetblock2" {
  name                = "demo-vnet1"
  location            = "Central India"
  resource_group_name = "demo-rg"
  address_space       = ["10.0.1.0/20"]
}
