terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

provider "random" {
  #Config
}

resource "random_id" "user_id" {
  byte_length = 4
}

resource "random_string" "r_string_1" {
  length  = 10
  special = false
}
resource "random_string" "r_string_2" {
  length  = 10
  special = false
}


resource "local_file" "user" {
  content              = "${var.user.civilite} ${random_string.r_string_1.result} ${random_string.r_string_2.result}, a ${var.user.experience[0]} et ${var.user.experience[1]} id : ${random_id.user_id.id}"
  filename             = "./user.txt"
  file_permission      = 0700
  directory_permission = 0700
  depends_on = [
    random_id.user_id,
    random_string.r_string_1,
    random_string.r_string_2
  ]
}


