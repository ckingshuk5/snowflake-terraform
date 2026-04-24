
output "role_created" {
  value = snowflake_account_role.additional_role.name
}

output "databases_created" {
  value = [snowflake_database.ibor_db.name, snowflake_database.ism_db.name,
    snowflake_database.data_product_db.name, snowflake_database.apple_src_db.name]
}
output "debug_account_n" {
  value = var.account_name_n
}

output "debug_account_c" {
  value = var.account_name_c
}


