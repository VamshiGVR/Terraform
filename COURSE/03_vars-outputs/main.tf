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
    filename = "{pathmodule}/${var.fileName-1}.txt"
    count = var.count-num

}

resource "local_file" "fileName2" {
    content = "This is File2"
    filename ="{pathmodule}/${var.fileName-2}.txt"
    count = var.count-num
}

resource "local_file" "fileName3" {
    content = "This is File3"
    filename ="{pathmodule}/${var.fileName-3}.txt"
    count = var.count-num
}



# LOCAL VARIBLE : Temporary variable
locals {
  basepath = "${pathmodule}/Files"
}

resource "local_file" "fileName4" {
    content = "This file is used local variable"
    filename = "${local.basepath}/filename${var.count-num2}.md"
    count = var.count-num2
}