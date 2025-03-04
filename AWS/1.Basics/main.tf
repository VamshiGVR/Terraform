
#containes terraform settings, including required provisions

terraform {
# Which provider is been used
 required_providers {
  aws = {
   source  = "hashicorp/aws"
   version = "~> 4.16"
  }
 }
 required_version = ">= 1.2.0"
}

#Default region for that provider
provider "aws" {
  region  = "us-west-2"
}

#Instance with EC2
#app_server = naming instance
resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a" 
  instance_type = "t2.micro" #instance type
}