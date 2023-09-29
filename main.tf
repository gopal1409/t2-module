resource "azurerm_resource_group" "rg" {
  name = "my-module-gopal"
  location = "eastus"
}

module "vnet" {
  source = "github.com/gopal1409/terraform-module-vnet-amdocs"
  resource_group_name = azurerm_resource_group.rg.name
  vnet_name = "gopalvnet"
  address_space = ["10.0.0.0/16"]
  subnet_prefixes = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
  subnet_names = ["appsubnet","dbsubnet","midsubnet"]
  depends_on = [ azurerm_resource_group.rg ]
}