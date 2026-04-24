terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
}
provider "snowflake" {
    organization_name = var.organization_name
    account_name      = var.account_name
    user              = var.user_name
    role              = "SYSADMIN"
    authenticator     = "SNOWFLAKE_JWT"
    private_key       = var.private_key != "" ? var.private_key : file(var.private_key_path)
}