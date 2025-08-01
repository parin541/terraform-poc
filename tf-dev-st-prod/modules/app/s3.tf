resource "aws_s3_bucket" "bucket" {
  bucket = "${var.namespace}-${var.project}-${var.environment}-${var.appname}"
  force_destroy = true
}