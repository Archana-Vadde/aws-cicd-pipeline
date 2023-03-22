resource "aws_s3_bucket" "codepipeline_artifacts" {
  bucket = "pipeline-artifacts-dammo"
  
} 
 resource "aws_s3_bucket_public_access_block" "this" {
  bucket                  = aws_s3_bucket.codepipeline_artifacts.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
  }