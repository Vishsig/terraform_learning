output "cloudfront_url" {
  description = "CloudFront distribution domain (your static site URL)"
  value       = aws_cloudfront_distribution.s3_distribution.domain_name
}

output "cloudfront_complete_url" {
  description = "Full HTTPS URL ready to visit"
  value       = "https://${aws_cloudfront_distribution.s3_distribution.domain_name}"
}
