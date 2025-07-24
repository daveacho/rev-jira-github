resource "aws_s3_bucket" "test_bucket" {
  bucket        = "${var.projectName}-${var.environment}-my-test-random-bucket-a-a-a"
  force_destroy = true
}

resource "aws_s3_bucket" "test_bucket-2" {
  count         = var.environment == "dev" ? 1 : 0 # Create only in dev
  bucket        = "${var.projectName}-${var.environment}-my-test-random-bucket-b-b-b"
  force_destroy = true
  tags = {
    Name        = "${var.projectName}-${var.environment}-test-bucket"
    Environment = var.environment
  }
}