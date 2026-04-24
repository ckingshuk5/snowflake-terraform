variable "account_name" { 
    type = string 
    default = "xq47575" 
    }
variable "user_name"    { 
    type = string 
    default = "TERRAFORM_SVC" 
    }
variable "organization_name"    { 
    type = string 
    default = "fozmvxs"   
}

variable "private_key" {
  type      = string
  sensitive = true
  default   = ""
}
variable "private_key_path" {
  type      = string
  sensitive = true
  default   = "/home/kingshuk/.ssh/snowflake_tf_snow_key.p8"
}

variable "custom_role_name" {
  type    = string
  default = "DATA_ENGINEER_ROLE"
}