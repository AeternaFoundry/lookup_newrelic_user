data "newrelic_user" "user_lookup" {
  for_each = var.user_lookup

  authentication_domain_id = each.value.authentication_domain_id
  email_id                 = each.value.email_id
  name                     = each.value.name
}

