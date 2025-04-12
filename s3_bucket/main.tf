# main.tf
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "sample_bucket" {
  bucket = "my-sample-bucket-123456"
  acl    = "private"
}
