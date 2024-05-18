terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.48.0"
    }
  }

  backend "s3" {
    bucket = "hornet78s-remotestate"
    key = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "hornet78s-locking"

  }
}

provider "aws" {
    region = "us-east-1"
  
}