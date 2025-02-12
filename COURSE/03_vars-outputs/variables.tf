#input variable
variable "fileName-1" {
    description = "This is the name of file1"
    type = string
    default = "example1" 
}

variable "fileName-2" {
    description = "This is the name of file2"
    type = string
    default = "example2"
}

variable "fileName-3" {
    description = "This is the name of file3"
    type = string
    default = "example3"
}

#If we dont have any specify default value, terraform will ask while terraform plan
variable "count-num" {
  description = "This is used to count the values"
  type = number
  default = 1
}

variable "count-num2" {
  description = "This is used to count the values"
  type = number
  default = 2
}