terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.85.0"
    }
  }

    # BACKEND S3 storage
    backend "s3" {
        bucket = "terraform-learning-bucket"
        key    = "dev/terraform.tfstate"
        region = "us-west-2"
    }
}

provider "aws" {
    region = "us-west-2"
}