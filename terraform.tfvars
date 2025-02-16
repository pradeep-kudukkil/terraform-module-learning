bucket_name                   = "my-example-bucket-fekmfkef"
enable_versioning             = false
acl                           = "private"
enable_server_side_encryption = true

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
