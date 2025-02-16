bucket_name                   = "my-example-bucket-fekmfkef1"
enable_versioning             = false
acl                           = "private"
enable_server_side_encryption = true
aws_region                    = "ap-south-1"

public_access_block = {
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

tags = {
  Environment = "Dev"
  Project     = "ExampleProject"
}
