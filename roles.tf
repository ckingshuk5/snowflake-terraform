resource "snowflake_account_role" "additional_role_n" {
  name    = var.custom_role_name_n
  comment = "Custom role for database management"
}

resource "snowflake_account_role" "additional_role_c" {
  name    = var.custom_role_name_c
  comment = "Custom role for AI management"
}

# Grant the new role to SYSADMIN so it fits the standard hierarchy
resource "snowflake_grant_account_role" "to_sysadmin_n" {
  role_name        = snowflake_account_role.additional_role_n.name
  parent_role_name = "SYSADMIN"
}

# Grant the new role to SYSADMIN so it fits the standard hierarchy
resource "snowflake_grant_account_role" "to_sysadmin_c" {
  role_name        = snowflake_account_role.additional_role_c.name
  parent_role_name = "SYSADMIN"
}
