provider "aws" {
  region = "us-east-1"
  access_key = "<ACCESS KEY>"
  secret_key = "<SECRET KEY>"
}


resource "aws_s3_bucket" "b" {
  bucket = "test-example-s3-terraform-lt"
  acl    = "private"

  tags {
    Name	= "My bucket Demo - Terraform Deployment"
    Environment = "Dev-Env"
  }
}
