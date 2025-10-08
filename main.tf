provider "aws" {
  region = "us-east-1"
  }

resource "aws_instance" "one" {
  count= 3
  ami = "ami-052064a798f08f0d3"
  
  }
