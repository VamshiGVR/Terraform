#OUTPUT BLOCK
output "instance_ip" {
    value = aws_instance.web.public_ip 
}

resource "aws_instance" "server"{
    lifecycle {
      create_before_destroy = true
    }
}

resource "aws_instance" "server" {
    provisioner "remote-exec" {
        inline = [ 
            "sudo apt-get update",
            "sudo apt-get install -y nginx" 
            ]
    }
}