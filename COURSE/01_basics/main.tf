# simple file resource
# Resource block
# normal file
resource "local_file" "local_name" {
  filename = "C:/Users/ATGWORKS/OneDrive/Desktop/Terraform/COURSE/01_basics/example.txt"
  #filename ="${path.module}/example.txt"
  content = "This line is updated"
}

# Sentivegile
resource "local_sensitive_file" "local_sensitive_name" {
  filename = "C:/Users/ATGWORKS/OneDrive/Desktop/Terraform/COURSE/01_basics/example_senstive.txt"
  content = "This is a senstive information"
}