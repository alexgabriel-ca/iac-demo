resource "aws_s3_bucket" "config_recorder" {
  count = 0
  bucket = "s3bucketforconfig"
  force_destroy = true

  tags = {
    Name        = "AWS Config Bucket"
    Desctiption = "S3 bucket for storing Config results"
    Environment = var.environment
  }
}