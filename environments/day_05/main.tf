# S3 bucket 
resource "aws_s3_bucket" "demo_bucket" {
  bucket = var.bucket_name[count.index]
  count  = 3
  tags   = var.tags
}

# S3 bucket set
resource "aws_s3_bucket" "demo_bucket_set" {
  for_each   = var.bucket_name_set
  bucket     = each.value
  tags       = var.tags
  depends_on = [aws_s3_bucket.demo_bucket]
}

