 provider "aws" {
     region = "us-east-1"  # set your desired AWS region
 }

 resource "aws_instance" "this" {
     ami           = "ami-0866a3c8686eaeeba"  # Amazon Linux 2 AMI
     instance_type = "m5.large"               # Instance type
 }
