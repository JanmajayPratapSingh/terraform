resource "aws_s3_bucket" "example" {
  bucket = "shivalikaa-bucket-to-store-statefile"

  tags = {
    Name        = "Shivalikaa_bucket"
    Environment = "Dev"
  }
  force_destroy = true 
  
  
}
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.example.id

  rule {
    object_ownership = "ObjectWriter"
  }
}
resource "aws_s3_bucket_acl" "example" {
  depends_on = [aws_s3_bucket_ownership_controls.example]

  bucket = aws_s3_bucket.example.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}