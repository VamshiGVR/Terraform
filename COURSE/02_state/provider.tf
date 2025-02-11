terraform {
  backend "local" {
    path ="C:/Users/ATGWORKS/OneDrive/Desktop/Terraform/StateFile/terraform.tfstate"
  }
  
  required_providers {
    local ={
        source = "hashicorp/local"
        version = "2.5.2"
    }
  }
}