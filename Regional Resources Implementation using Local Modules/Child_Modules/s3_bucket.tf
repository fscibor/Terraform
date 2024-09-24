resource "aws_s3_bucket" "production_data" {
    bucket = "${var.app_region}-${var.bucket}"
  
}