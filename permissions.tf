# Grant usage on Databases
resource "snowflake_grant_privileges_to_account_role" "db_grants" {
  for_each          = toset([snowflake_database.ibor_db.name, snowflake_database.ism_db.name
    , snowflake_database.data_product_db.name, snowflake_database.apple_src_db.name])
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.additional_role.name
  on_account_object {
    object_type = "DATABASE"
    object_name = each.value
  }
}

# Grant usage on Schemas
resource "snowflake_grant_privileges_to_account_role" "schema_grants" {
  for_each          = toset([snowflake_schema.sales_raw.fully_qualified_name, snowflake_schema.hr_sensitive.fully_qualified_name])
  privileges        = ["USAGE", "CREATE TABLE"]
  account_role_name = snowflake_account_role.additional_role.name
  on_schema {
    schema_name = each.value
  }
}
