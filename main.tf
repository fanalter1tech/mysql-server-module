resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_mysql_server" "this" {
  name                = "msql-${var.identifier}-${var.env_name}"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name

  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  sku_name   = var.sku_name
  storage_mb = var.storage_mb
  version    = var.server_version

  ssl_enforcement_enabled = var.ssl_enforcement_enabled

  tags = var.tags
}
