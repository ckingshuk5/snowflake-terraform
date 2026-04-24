terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake" # Must match root exactly
      version = "~> 0.94"             # Use latest for Cortex features
    }
  }
}


# Deploy to normal account
module "deploy_to_n" {
  source = "./modules/snowflake_standard"
  providers = {
    snowflake = snowflake.normal
  }
  custom_role_name = var.custom_role_name_n
}

# Deploy to Account Cortex can't bedone ?
module "deploy_to_c" {
  source = "./modules/snowflake_standard"
  providers = {
    snowflake = snowflake.cortex
  }
  custom_role_name = var.custom_role_name_c
}