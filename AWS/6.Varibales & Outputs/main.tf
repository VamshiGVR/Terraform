terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
        } 
  }
 required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

locals {
  extra_tag = "extra-tag"
}

resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}
