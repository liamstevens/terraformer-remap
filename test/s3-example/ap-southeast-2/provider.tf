provider "aws" {
  region = "ap-southeast-2"
}

terraform {
  required_providers {
    aws = {
      version = "~> 4.2.0"
    }
  }
  backend "s3" {
	  bucket         = "clevero-terraform"
      key            = "import/generated/aws/s3/ap-southeast-2/terraform.tfstate"
      region         = "ap-southeast-2"
      dynamodb_table = "clevero-terraform"
    }
}
