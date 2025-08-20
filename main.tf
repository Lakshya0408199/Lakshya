terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"  # Set your desired AWS region
}

resource "aws_instance" "Demo" {
  ami           = "ami-0861f4e788f5069dd"  # Specify an appropriate AMI ID
  instance_type = "t3.micro"

  tags = {
    Name = "Demo"
  }
}