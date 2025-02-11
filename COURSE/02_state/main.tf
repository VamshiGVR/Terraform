resource "local_file" "FileName1" {
  content = "This is for state - 1"
  filename= "${path.module}/filename1.txt"
}

resource "local_file" "FileName2" {
  content = "This is for state - 2"
  filename= "${path.module}/filename2.txt"
}

resource "local_sensitive_file" "sensitiveFileName1" {
  content = "This is for secret"
  filename= "${path.module}/sensitivefilename1.txt"
}

resource "local_sensitive_file" "sensitiveFileName2" {
  content = "This is for secret"
  filename= "${path.module}/sensitivefilename2.txt"
}
