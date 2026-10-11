variable "group_provisioned_users_lookup" {
  description = <<EOT
Map of group_provisioned_users_lookup, attributes below
Required:
    - id
Optional:
    - active
    - blocked
    - created_after
    - created_before
    - search
    - username
EOT

  type = map(object({
    id             = string
    active         = optional(bool)
    blocked        = optional(bool)
    created_after  = optional(string)
    created_before = optional(string)
    search         = optional(string)
    username       = optional(string)
  }))
}

