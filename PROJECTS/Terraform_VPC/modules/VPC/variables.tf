variable "vpc_cidr" {
    description = "VpC CIDR Range"
    type = string

}

variable "subnet_cidr" {
  description = "Subnet CIDR's"
  type = list(string)
}

variable "subnet_names" {
  description = "Subnet CIDR's"
  type=