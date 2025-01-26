resource "aws_s3_bucket" "bucket" {
  bucket        = var.bucket_name
  acl           = var.acl
  force_destroy = var.force_destroy

  tags = var.tags
}