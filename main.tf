
provider "aws" {
    region = "us-west-2"
}

variable vpc_cidr_block {}
variable subnet_cidr_block {}
variable availability_zone {}

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