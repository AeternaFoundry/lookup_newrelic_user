output "user_lookup_id" {
  description = "Map of id values across all user_lookup, keyed the same as var.user_lookup except keys with no id are omitted"
  value       = { for k, v in data.newrelic_user.user_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_lookup_authentication_domain_id" {
  description = "Map of authentication_domain_id values across all user_lookup, keyed the same as var.user_lookup except keys with no authentication_domain_id are omitted"
  value       = { for k, v in data.newrelic_user.user_lookup : k => v.authentication_domain_id if v.authentication_domain_id != null && length(v.authentication_domain_id) > 0 }
}
output "user_lookup_email_id" {
  description = "Map of email_id values across all user_lookup, keyed the same as var.user_lookup except keys with no email_id are omitted"
  value       = { for k, v in data.newrelic_user.user_lookup : k => v.email_id if v.email_id != null && length(v.email_id) > 0 }
}
output "user_lookup_name" {
  description = "Map of name values across all user_lookup, keyed the same as var.user_lookup except keys with no name are omitted"
  value       = { for k, v in data.newrelic_user.user_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}

