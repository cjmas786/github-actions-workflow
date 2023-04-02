terraform {
  backend "s3" {
    bucket = "mys3sunny"
    key    = "devtest/terraform.tfstate"
    region = "us-east-1"
    role_arn  = "arn:aws:iam::087234784226:role/assume-role-network-account"
  }
}


provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "my_ec2_sunny" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  tags = {
    Name = "devtest-ec2"
  }
}
