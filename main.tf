
provider "aws" {
    region = "us-east-1"
}

variable vpc_cidr_block {
  default = "10.0.0.0/16"
}
variable subnet_cidr_block {
  default = "10.0.15.0/24"
}
variable availability_zone {
  default = "us-west-2a"
}

resource "aws_vpc" "tf_vpc_majid" {
  cidr_block       = var.vpc_cidr_block

  tags = {
    Name = "tf_vpc_majid"
  }
}

resource "aws_subnet" "tf_subnet_majid" {
  vpc_id     = aws_vpc.tf_vpc_majid.id
  cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone
  tags = {
    Name = "tf_subnet_majid"
  }
}