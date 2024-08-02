output "readonly_username" {
  description = "The read-only MySQL username"
  value       = mysql_user.readonly.user
}

output "readonly_host" {
  description = "The host for the read-only MySQL user"
  value       = mysql_user.readonly.host
}
