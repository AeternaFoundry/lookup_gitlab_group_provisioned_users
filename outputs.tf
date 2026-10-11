output "group_provisioned_users_lookup_active" {
  description = "Map of active values across all group_provisioned_users_lookup, keyed the same as var.group_provisioned_users_lookup except keys with no active are omitted"
  value       = { for k, v in data.gitlab_group_provisioned_users.group_provisioned_users_lookup : k => v.active if v.active != null }
}
output "group_provisioned_users_lookup_blocked" {
  description = "Map of blocked values across all group_provisioned_users_lookup, keyed the same as var.group_provisioned_users_lookup except keys with no blocked are omitted"
  value       = { for k, v in data.gitlab_group_provisioned_users.group_provisioned_users_lookup : k => v.blocked if v.blocked != null }
}
output "group_provisioned_users_lookup_created_after" {
  description = "Map of created_after values across all group_provisioned_users_lookup, keyed the same as var.group_provisioned_users_lookup except keys with no created_after are omitted"
  value       = { for k, v in data.gitlab_group_provisioned_users.group_provisioned_users_lookup : k => v.created_after if v.created_after != null && length(v.created_after) > 0 }
}
output "group_provisioned_users_lookup_created_before" {
  description = "Map of created_before values across all group_provisioned_users_lookup, keyed the same as var.group_provisioned_users_lookup except keys with no created_before are omitted"
  value       = { for k, v in data.gitlab_group_provisioned_users.group_provisioned_users_lookup : k => v.created_before if v.created_before != null && length(v.created_before) > 0 }
}
output "group_provisioned_users_lookup_id" {
  description = "Map of id values across all group_provisioned_users_lookup, keyed the same as var.group_provisioned_users_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_group_provisioned_users.group_provisioned_users_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_provisioned_users_lookup_provisioned_users" {
  description = "Map of provisioned_users values across all group_provisioned_users_lookup, keyed the same as var.group_provisioned_users_lookup except keys with no provisioned_users are omitted"
  value       = { for k, v in data.gitlab_group_provisioned_users.group_provisioned_users_lookup : k => v.provisioned_users if v.provisioned_users != null && length(v.provisioned_users) > 0 }
}
output "group_provisioned_users_lookup_search" {
  description = "Map of search values across all group_provisioned_users_lookup, keyed the same as var.group_provisioned_users_lookup except keys with no search are omitted"
  value       = { for k, v in data.gitlab_group_provisioned_users.group_provisioned_users_lookup : k => v.search if v.search != null && length(v.search) > 0 }
}
output "group_provisioned_users_lookup_username" {
  description = "Map of username values across all group_provisioned_users_lookup, keyed the same as var.group_provisioned_users_lookup except keys with no username are omitted"
  value       = { for k, v in data.gitlab_group_provisioned_users.group_provisioned_users_lookup : k => v.username if v.username != null && length(v.username) > 0 }
}

