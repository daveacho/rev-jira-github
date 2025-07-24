output "s3-bucket-name" {
  value = aws_s3_bucket.test_bucket.bucket
}

output "test-bucket-2" {
  value = aws_s3_bucket.test_bucket-2.bucket
}