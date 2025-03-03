resource "aws_instance" "linux" {
  ami           = var.ami
  instance_type = "t2.micro"
  tags = {
    Name = "ami"
  }
}