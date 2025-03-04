# Input variable: DB remote state bucket name
variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  default     =  "terraform-state-afb"
}

# Input variable: DB remote state bucket key
variable "db_remote_state_key" {
  description = "The path for database's remote state in S3"
  default     = "if-statements-example/prod/data-stores/mysql/terraform.tfstate"
}
