data "azurerm_public_ip" "PublicIP" {
  name                = var.frontend_pip_name
  resource_group_name = var.resource_group_name
}

data "azurerm_subnet" "subnet" {
  name                 = var.frontend_subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.resource_group_name
}

# data "azurerm_key_vault" "kv" {
#   name                = var.key_vault_name
#   resource_group_name = var.resource_group_name
# }

# data "azurerm_key_vault_secret" "vm-username" {
#   name         = ""
#   key_vault_id = data.azurerm_key_vault.kv.id
# }

# data "azurerm_key_vault_secret" "vm-password" {
#   name         = var.password_secret_name
#   key_vault_id = data.azurerm_key_vault.kv.id
# }
