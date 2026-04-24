# Define Snowflake databases using Terraform: ibor_db
resource "snowflake_database" "ibor_db" {
  name         = "IBOR_DB"
  is_transient = true
}

# Define Snowflake databases using Terraform: ism_db
resource "snowflake_database" "ism_db" {
  name = "ISM_DB"
  is_transient = true
}

# Define Snowflake databases using Terraform: data_productdb
resource "snowflake_database" "data_product_db" {
  name = "DATA_PRODUCT_DB"
    is_transient = true
}

# Define Snowflake databases using Terraform: apple_src_db
resource "snowflake_database" "apple_src_db" {
  name         = "APPLE_SRC_DB"
  is_transient = true
}