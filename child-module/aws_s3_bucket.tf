// Create the S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = var.acl

  // Enable versioning if specified
  versioning {
    enabled = var.enable_versioning
  }

  // Apply server-side encryption if specified
  dynamic "server_side_encryption_configuration" {
    for_each = var.enable_server_side_encryption ? [1] : []
    content {
      rule {
        apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"
        }
      }
    }
  }

  // Add tags
  tags = var.tags
}

// Configure public access block settings for the S3 bucket
resource "aws_s3_bucket_public_access_block" "my_bucket_access_block" {
  bucket                  = aws_s3_bucket.my_bucket.id
  block_public_acls       = var.public_access_block.block_public_acls
  ignore_public_acls      = var.public_access_block.ignore_public_acls
  block_public_policy     = var.public_access_block.block_public_policy
  restrict_public_buckets = var.public_access_block.restrict_public_buckets
}
