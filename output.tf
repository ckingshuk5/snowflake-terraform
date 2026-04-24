output "snowflake_svc_public_key" {
    value     = tls_private_key.svc_key.public_key_pem
}

output "snowflake_svc_private_key" {
    value     = tls_private_key.svc_key.private_key_pem
    sensitive = true
}

output "role_created" {
  value = snowflake_account_role.additional_role.name
}

output "databases_created" {
  value = [snowflake_database.ibor_db.name, snowflake_database.ism_db.name,
    snowflake_database.data_product_db.name, snowflake_database.apple_src_db.name]
}

