variable "account_name_c" { 
    type = string 
    default = "UO09458" 
    }
variable "user_name_c"    { 
    type = string 
    default = "TERRAFORM_SVC" 
    }
variable "organization_name_c"    { 
    type = string 
    default = "NXFFBTH"   
}
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
variable "private_key_path" {
  type      = string
  sensitive = true
  default   = "/home/kingshuk/.ssh/snowflake_tf_snow_key.p8"
}
variable "private_key" {
  type      = string
  sensitive = true
  default   = ""
}

