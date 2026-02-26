variable "project_name" {
  type    = string
  default = "Project ALPHA Resource"
}

variable "default_tags" {
  default = {
    company    = "TechCorp"
    managed_by = "terraform"
  }
}

variable "environemnt_tags" {
  default = {
    environment = "demo"
    cost_center = "12345"
  }
}

variable "bucket_name" {
  type    = string
  default = "Function Bucket"
}

variable "port_list" {
  type    = string
  default = "80, 443, 8080"
}

variable "instance_env" {
  default = {
    dev   = "t3.micro"
    prod  = "t3.medium"
    stage = "t2.small"
  }
}

variable "environment" {
  type = string
}

variable "instance_type" {
  default = "t3.micro"

  validation {
    condition     = length(var.instance_type) >= 2 && length(var.instance_type) <= 20
    error_message = "Instance type must be between 2 and 20 characters"
  }

  validation {
    condition     = can(regex("^t[2-3]\\.", var.instance_type))
    error_message = "Instance type must be t2 or t3"
  }
}


variable "bucket_backup" {
  type = string

  validation {
    condition     = endswith(var.bucket_backup, "_backup")
    error_message = "Bucket name must end with _backup"
  }
}

variable "credentials" {
  type      = string
  default   = "pass123"
  sensitive = false
}

variable "cost_center" {
  default = [12, 34, 56, 78, 999]
}
