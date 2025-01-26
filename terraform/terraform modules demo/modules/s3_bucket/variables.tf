variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "The access control list (ACL) for the bucket"
  type        = string
  default     = "private"
}

variable "force_destroy" {
  description = "Whether to allow bucket deletion even if it contains objects"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the bucket"
  type        = map(string)
  default     = {}
}