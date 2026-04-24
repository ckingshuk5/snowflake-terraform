resource "snowflake_account_role" "additional_role" {
  name    = var.custom_role_name
  comment = "Custom role for database management"
}

# Grant the new role to SYSADMIN so it fits the standard hierarchy
resource "snowflake_grant_account_role" "to_sysadmin" {
  role_name        = snowflake_account_role.additional_role.name
  parent_role_name = "SYSADMIN"
}
