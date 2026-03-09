terraform {
  backend "s3" {
    bucket       = "day02-state-bucket"
    key          = "demo/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
