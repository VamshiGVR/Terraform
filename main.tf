terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"
}

















































/*#containes terraform settings, including required provisions
terraform {
  #connecting to web
  backend "remote" {
    organization = "Terraform--learn"
    workspaces {
      name = "learning"
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
#specific provides
provider "aws" {
  region  = "us-west-2"
}

#THIS IS USED IN CREATING AWS INSTANCE
/*
resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformAppServerInstance"
  }
}*/

#THIS IS USED TO CREATE AWS INSTANCE USIGN VARIABLES
resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}