provider "aws" { region = "us-east-1" }

locals { env = "test" }

resource "aws_vpc" "one" { cidr_block = "10.0.0.0/16" tags = { Name = "${local.env}-vpc" } }

resource "aws_subnet" "two" { vpc_id = aws_vpc.one.id cidr_block = "10.0.1.0/24"

tags = { Name = "${local.env}-subent" } }

resource "aws_instance" "three" { subnet_id = aws_subnet.two.id ami = "ami-0866a3c8686eaeeba" instance_type = "t2.micro" tags = { Name = "${local.env}--server" } }
