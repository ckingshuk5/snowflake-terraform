terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
}
provider "snowflake" {
    alias = "normal"
    organization_name = var.organization_name_n
    account_name      = var.account_name_n
    user              = var.user_name_n
    role              = "SYSADMIN"
    authenticator     = "SNOWFLAKE_JWT"
    private_key       = var.private_key != "" ? var.private_key : file(var.private_key_path)
}

provider "snowflake" {
    alias = "cortex"
    organization_name = var.organization_name_c
    account_name      = var.account_name_c
    user              = var.user_name_c
    role              = "SYSADMIN"
    authenticator     = "SNOWFLAKE_JWT"
    private_key       = var.private_key != "" ? var.private_key : file(var.private_key_path)
}

# Deploy to normal account
module "deploy_to_n" {
  source = "./modules/snowflake_standard"
  providers = {
    snowflake = snowflake.normal
  }
  custom_role_name = var.custom_role_name_n
}

# Deploy to Account Cortex
module "deploy_to_c" {
  source = "./modules/snowflake_standard"
  providers = {
    snowflake = snowflake.cortex
  }
  custom_role_name = var.custom_role_name_c
}