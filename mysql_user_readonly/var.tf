variable "endpoint" {
  description = "The endpoint of the MySQL server"
  type        = string
}

variable "admin_username" {
  description = "The admin username to connect to the MySQL server"
  type        = string
}

variable "admin_password" {
  description = "The admin password to connect to the MySQL server"
  type        = string
  sensitive   = true
}

variable "username" {
  description = "The read-only username to create"
  type        = string
}

variable "password" {
  description = "The password for the read-only user"
  type        = string
  sensitive   = true
}

variable "database" {
  description = "The database to grant read-only access to"
  type        = string
}
