
output "role_created" {
  value = snowflake_account_role.additional_role.name
}

output "databases_created" {
  value = [snowflake_database.ibor_db.name, snowflake_database.ism_db.name,
    snowflake_database.data_product_db.name, snowflake_database.apple_src_db.name]
}


