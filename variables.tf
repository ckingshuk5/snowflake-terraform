variable "account_name_n" { 
    type = string 
    default = "xq47575" 
    }
variable "user_name_n"    { 
    type = string 
    default = "TERRAFORM_SVC" 
    }
variable "organization_name_n"    { 
    type = string 
    default = "fozmvxs"   
}
variable "custom_role_name_n" {
  type    = string
  default = "DATA_ENGINEER_ROLE"
}

variable "account_name_c" { 
    type = string 
    default = "NXFFBTH-UO09458" 
    }
variable "user_name_c"    { 
    type = string 
    default = "TERRAFORM_SVC" 
    }
variable "organization_name_c"    { 
    type = string 
    default = "NXFFBTH"   
}
variable "custom_role_name_c" {
  type    = string
  default = "AI_ENGINEER_ROLE"
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

