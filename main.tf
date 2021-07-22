resource "aws_s3_bucket" "test_bucket" {
  bucket = "my-tf-test-bucket-123902538"
  acl    = "private"

  tags = {
    Name        = "My bucket"
  }
}