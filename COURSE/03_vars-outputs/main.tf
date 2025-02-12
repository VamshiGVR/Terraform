terraform {
  required_providers {
    local ={
        source = "hashicorp/local"
        version = "2.5.1"
    } 
  }
}

resource "local_file" "fileName1" {
    content = "This is File1"
    filename = "${path.module}/${var.fileName-1}.txt"
    count = var.count-num

}

resource "local_file" "fileName2" {
    content = "This is File2"
    filename ="${path.module}/${var.fileName-2}.txt"
    count = var.count-num
}

resource "local_file" "fileName3" {
    content = "This is File3"
    filename ="${path.module}/${var.fileName-3}.txt"
    count = var.count-num
}



# LOCAL VARIBLE : Temporary variable
#1
locals {
  basepath = "${path.module}/Files"
}

resource "local_file" "fileName4" {
    content = "This file is used local variable"
    filename = "${local.basepath}/filename.md"
}

#2
locals {
     # enivronment name
  environment = "dev"
     # changing name to upper
  upperCase = upper(local.environment)
     # Adding path to enivironment.
  base_path ="${path.module}/Configs/${local.upperCase}"
}

resource "local_file" "server" {
  filename = "${local.base_path}/server${var.count-num2}.sh"
  content = <<EOT
  environment = ${local.upperCase}
  port = 3003
  EOT
  count = var.count-num2
}