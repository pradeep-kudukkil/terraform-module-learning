# main.tf

terraform {
  required_version = ">= 1.0.0"
}

module "my_s3_bucket" {
  source = "./child-module" // Path to your module

  bucket_name                   = var.bucket_name
  enable_versioning             = var.enable_versioning
  acl                           = var.acl
  enable_server_side_encryption = var.enable_server_side_encryption
  public_access_block           = var.public_access_block
  tags                          = var.tags
}
