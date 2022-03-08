resource "aws_s3_bucket" "b" {
  bucket = "tf-test-bucket-litan"

  tags = {
    Name        = "Liran's bucket"
    Environment = "Dev"
  }
}
