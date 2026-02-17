# Environment vriable
variable "environment" {
  description = "Environment for instance"
  type        = string
}

# Region variable
variable "allowed_region" {
  description = "Region for instance"
  type        = list(string)
}

# EC2 instance count variable
variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
}

# CIDR block range
variable "cidr_block" {
  description = "CIDR block range for VPC"
  type        = list(string)
}

# VM type
variable "instance_type" {
  description = "Type of EC2 instance"
  type        = list(string)
}

# Tags
variable "tags" {
  type = map(string)
  default = {
    Environment = "demo"
    Name        = "demo-EC2-Instance"
    created_by  = "terraform"
  }
}

# Ingress values
variable "ingress_values" {
  type    = tuple([number, string, number])
  default = [443, "tcp", 443]
}

# Config
variable "config" {
  type = object({
    region         = string
    monitoring     = bool
    instance_count = number
  })
  default = {
    region         = "us-east-1"
    monitoring     = true
    instance_count = 1
  }

}

# S3 bucket names - list
variable "bucket_name" {
  description = "List names of S3 buckets"
  type        = list(string)
  default     = ["demo-bucket-4567", "demo-bucket-4568", "demo-bucket-4569"]
}

# S3 bucket names - set
variable "bucket_name_set" {
  description = "Set names of S3 buckets"
  type        = set(string)
  default     = ["demo-bucket-4570", "demo-bucket-4571", "demo-bucket-4572"]
}
