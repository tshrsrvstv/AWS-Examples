terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.2"
    }
  }
}

provider "aws" {
  profile = "cvent-sandbox"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "w502023-terraform-bucket" {
  bucket = "w502023-terraform-bucket"

  tags = {
    Name        = "w502023-terraform-bucket"
    Environment = "Dev"
  }
}