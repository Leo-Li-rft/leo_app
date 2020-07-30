provider "aws" {
  version = "~> 2.7"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket  = var.bucket_name
  acl    = "public-read"
  tags = {
    Name = "Leo"
  }
}
