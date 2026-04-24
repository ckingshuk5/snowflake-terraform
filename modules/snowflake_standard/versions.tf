terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake" # Must match root exactly
      version = "~> 0.94"             # Use latest for Cortex features
    }
  }
}