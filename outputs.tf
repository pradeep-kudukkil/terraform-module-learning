output "bucket_id-aws" {
  description = "The ID of the S3 bucket"
  value       = module.my_s3_bucket.bucket_id
}

output "bucket_arn-aws" {
  description = "The ARN of the S3 bucket"
  value       = module.my_s3_bucket.bucket_arn
}
