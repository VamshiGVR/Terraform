terraform {
  required_providers {
    #Specifes which provider terraform uses
    aws = {
        # uses this or newer version
        version = ">= 5.0.0"
        source = "hashicorp/aws"
    }
  }
}

provider "aws" {
    region = "us-west-2"
}

resource "aws_instance" "my_server" {
    #ami = amazon machine image
    ami = "ami-0c55b159cbfafe1f0"
    #specifies size of instance.
    instance_type = "t2.micro"
}