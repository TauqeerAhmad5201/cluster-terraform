resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "model_hosting" {
  cidr_block = "10.1.0.0/16"
}

resource "aws_vpc" "jenkins" {
  cidr_block = "10.2.0.0/16"
}