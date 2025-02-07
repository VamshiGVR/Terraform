# simple file resource
# Resource block
# normal file

## Type = same for multiple resources but reference name should be different.
## Type = differnt then reference name can be same.
resource "local_file" "local_name" {
  filename = "C:/Users/ATGWORKS/OneDrive/Desktop/Terraform/COURSE/01_basics/example.txt"
  #filename ="${path.module}/localFile.txt"
  content = "This line is updated"
}

# Sentive File
resource "local_sensitive_file" "local_sensitive_name" {
  filename = "C:/Users/ATGWORKS/OneDrive/Desktop/Terraform/COURSE/01_basics/senstiveFile.txt"
  content  = "This is a senstive information."
}
