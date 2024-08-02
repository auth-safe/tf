terraform {
  required_providers {
    mysql = {
      source  = "petoju/mysql"
      version = "3.0.60"
    }
  }
}

provider "mysql" {
  endpoint = var.endpoint
  username = var.admin_username
  password = var.admin_password
}

resource "mysql_user" "readonly" {
  user               = var.username
  host               = "%"
  plaintext_password = var.password
}

resource "mysql_grant" "readonly" {
  user       = mysql_user.readonly.user
  host       = mysql_user.readonly.host
  database   = var.database
  privileges = ["SELECT"]
}
