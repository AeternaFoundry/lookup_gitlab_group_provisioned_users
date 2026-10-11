data "gitlab_group_provisioned_users" "group_provisioned_users_lookup" {
  for_each = var.group_provisioned_users_lookup

  id             = each.value.id
  active         = each.value.active
  blocked        = each.value.blocked
  created_after  = each.value.created_after
  created_before = each.value.created_before
  search         = each.value.search
  username       = each.value.username
}

