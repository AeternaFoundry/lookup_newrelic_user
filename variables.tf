variable "user_lookup" {
  description = <<EOT
Map of user_lookup, attributes below
Required:
    - authentication_domain_id
Optional:
    - email_id
    - name
EOT

  type = map(object({
    authentication_domain_id = string
    email_id                 = optional(string)
    name                     = optional(string)
  }))
}

