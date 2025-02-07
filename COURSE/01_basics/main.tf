# simple file resource
# Resource block
resource "local_file" "local_name" {
  filename = "C:/Users/ATGWORKS/OneDrive/Desktop/Terraform/COURSE/01_basics/example.txt"
  #filename ="${path.module}/example.txt"
  content = "Hey, THis is for learning purpose."
}