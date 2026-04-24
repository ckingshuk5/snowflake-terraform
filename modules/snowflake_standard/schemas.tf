# Schema for ibor_db
resource "snowflake_schema" "ibor_schema" {
  database = snowflake_database.ibor_db.name
  name     = "IBOR"
}

# Schema for ism_db
resource "snowflake_schema" "ism_schema" {
  database = snowflake_database.ism_db.name
  name     = "ISM"
}

# Schema for data_productdb
resource "snowflake_schema" "data_product_schema" {
  database = snowflake_database.data_product_db.name
  name     = "RELEASE"
}

# Schema for apple_src_db
resource "snowflake_schema" "apple_schema" {
  database = snowflake_database.apple_src_db.name
  name     = "APPLE"
}
