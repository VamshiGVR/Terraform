# Variable block // SPECIFIcATION BLOCK

variable "aws_region" {
    description = "The AWS Region Value"
    type = "string"
    default = "us-west-1"  
}

# configure the AWS provider
provider "aws" {
    region = var.aws_region
}

#DATA BLOCK
#retrive the list of AZs in current AWS region
data "aws_availability_zone" "available" {}

module "network" {
  source = "./module/network"
  vpc_id= aws_vpc.main.id
}