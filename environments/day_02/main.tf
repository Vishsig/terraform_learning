terraform {
  backend "s3" {
    bucket       = "day02-state-bucket"
    key          = "demo/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a S3 bucket
resource "aws_s3_bucket" "demo_bucket" {
  bucket = "day02-demo-bucket"
  tags = {
    Name        = "My bucket"
    Environment = "Demo"
  }
}
