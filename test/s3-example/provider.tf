provider "aws" {}

terraform {
  required_providers {
    aws = {
      version = "~> 4.2.0"
    }
  }
  backend "s3" {
    config = {
      bucket         = "clevero-terraform"
      key            = "import/generated/aws/s3"
      region         = "ap-southeast-2"
      dynamodb_table = "clevero-terraform"
    }
  }
}


