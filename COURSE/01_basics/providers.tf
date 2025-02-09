# terraform block
terraform {
  required_providers {
    # providers
    local = {
        source = "hashicorp/local"
        version = "2.5.2"
    }
  }
}

#provider block
