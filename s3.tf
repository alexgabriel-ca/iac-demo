resource "aws_s3_bucket" "config_recorder" {
  bucket = "s3bucketforconfig"
  force_destroy = true

  tags = {
    Name        = "AWS Config Bucket"
    Desctiption = "S3 bucket for storing Config results"
    Environment = var.environment
  }
}