terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Environment vriable
variable "environment" {
    default = "demo"
    type = string
}

# Region variable
variable "region" {
    default = "us-east-1"
    type = string 
    }
# Configure the AWS Provider
provider "aws" {
  region = var.region
}

# Create EC2 instance
resource "aws_instance" "demo_instance" {
  ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
  instance_type = "t3.micro"
  region = var.region

  tags = {
    Name = "Demo EC2 Instance"
  }
}

# Output the instance ID
output "ec2_id" {
  value = aws_instance.demo_instance.id
} 