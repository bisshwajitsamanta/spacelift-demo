terraform {
required_providers {
aws = {
source ="hashicorp/aws"
}
}
}
provider "aws" {
region ="us-east-1"
}
resource "aws_instance" "demo_instance" {
ami = "ami-0715c1897453cabd1"
instance_type = "t2.micro"
tags = {
    Name = "demo-server"
}
}