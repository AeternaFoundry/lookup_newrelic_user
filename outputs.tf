output "user_lookup_id" {
  description = "Map of id values across all user_lookup, keyed the same as var.user_lookup"
  value       = { for k, v in data.newrelic_user.user_lookup : k => v.id }
}
output "user_lookup_authentication_domain_id" {
  description = "Map of authentication_domain_id values across all user_lookup, keyed the same as var.user_lookup"
  value       = { for k, v in data.newrelic_user.user_lookup : k => v.authentication_domain_id }
}
output "user_lookup_email_id" {
  description = "Map of email_id values across all user_lookup, keyed the same as var.user_lookup"
  value       = { for k, v in data.newrelic_user.user_lookup : k => v.email_id }
}
output "user_lookup_name" {
  description = "Map of name values across all user_lookup, keyed the same as var.user_lookup"
  value       = { for k, v in data.newrelic_user.user_lookup : k => v.name }
}

