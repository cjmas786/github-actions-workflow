provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "my_ec2_sunny" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  tags = {
    Name = "network-ec2"
  }
}
