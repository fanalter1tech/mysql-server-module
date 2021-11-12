variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "env_name" {
  type    = string
  default = "dev"
}

variable "identifier" {
  type = string
}


variable "administrator_login" {
  type = string
}

variable "administrator_login_password" {
  type      = string
  sensitive = true
}

variable "sku_name" {
  type = string
}

variable "storage_mb" {
  type = number
}

variable "server_version" {
  type = string
}

variable "ssl_enforcement_enabled" {
  type    = bool
  default = false
}

variable "tags" {
  type = map(string)
  default = {
    Environment = ""
  }
}
