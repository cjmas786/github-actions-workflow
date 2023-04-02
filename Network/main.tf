provider "aws" {
  region     = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "mys3sunny"
    key    = "NetworkStateFile/terraform.tfstate"
    encrypt   = true
    region = "us-east-1"
    dynamodb_table  = "Lock_Table"
  }
}

resource "aws_instance" "my_ec2_sunny" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  tags = {
    Name = "gen"
  }
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  tags = {
    Name = "genX"
  }
}

resource "aws_instance" "my_ec2h" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  tags = {
    Name = "here"
  }
}

