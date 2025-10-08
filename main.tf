provider "aws" {
  region = "us-east-1"
  }

resource "aws_instance" "one" {
  ami = "ami-052064a798f08f0d3"
  instance_type = "t3.micro"
  }
