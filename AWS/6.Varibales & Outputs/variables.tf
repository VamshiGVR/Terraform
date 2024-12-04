variable "instance_name" {
    description = "value of the Name tag for EC2 instance"
    type = string
    default = "TerraformAppServerInstance"
}

variable "ami" {
    description = "Amazon machine image to use for EC2 Instances"
    type = string
    default = "ami-08d70e59c07c61a3a" 
}


