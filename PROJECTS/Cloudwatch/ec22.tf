resource "aws_instance" "EC2" {
    ami = var.ami
    instance_type = "t2.micro"

    tags = {
      Name = "Hello world"
    }
}