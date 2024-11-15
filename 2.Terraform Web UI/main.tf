
terraform {
  #connecting to web
backend "remote" {
  organization = "Terraform-Login"
  workspaces {
    name = "Terraform-Login"
  }
}
 required_providers {
  aws = {
   source  = "hashicorp/aws"
   version = "~> 4.16"
  }
 }
 required_version = ">= 1.2.0"
}

#specific provider
provider "aws" {
  region  = "us-west-2"
}

#THIS IS USED IN CREATING AWS INSTANCE
resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformAppServerInstance"
  }
}