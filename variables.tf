# variables.tf

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "enable_versioning" {
  description = "Enable or disable versioning for the bucket"
  type        = bool
  default     = false
}

variable "acl" {
  description = "Canned ACL to apply to the bucket"
  type        = string
  default     = "private"
}

variable "enable_server_side_encryption" {
  description = "Enable or disable server-side encryption for the bucket"
  type        = bool
  default     = false
}

variable "public_access_block" {
  description = "Configuration for blocking public access"
  type = object({
    block_public_acls       = bool
    ignore_public_acls      = bool
    block_public_policy     = bool
    restrict_public_buckets = bool
  })
  default = {
    block_public_acls       = true
    ignore_public_acls      = true
    block_public_policy     = true
    restrict_public_buckets = true
  }
}

variable "tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
  default     = {}
}
