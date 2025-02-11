# simple file resource
# Resource block
# normal file
## Type = same for multiple resources but reference name should be different.
## Type = diffrent then reference name can be same.
resource "local_file" "local_name" {
  filename = "C:/Users/ATGWORKS/OneDrive/Desktop/Terraform/COURSE/01_basics/localFile.txt"
  #filename ="${path.module}/localFile.txt"
  content = "This line is updated"
}

# Sentive File
resource "local_sensitive_file" "local_sensitive_name" {
  filename = "C:/Users/ATGWORKS/OneDrive/Desktop/Terraform/COURSE/01_basics/localSenstiveFile.txt"
  content  = "This is a senstive information."
}

# Used Meta_Argument word as COUNT: it replicates the resources.
resource "local_file" "local_name2" {
  filename="${path.module}/localFile${count.index}.txt"
  content = "replicas"
  count =4
}

















