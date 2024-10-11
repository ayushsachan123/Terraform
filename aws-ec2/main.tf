terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.69.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "myserver" {
   ami = "ami-0522ab6e1ddcc7055"
   instance_type = "t2.micro"

   tags = {
     Name = "sample_server"
   }
}