terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0"
    }
  }
  backend s3 {
    bucket = "roboshop-cart-remote-state"
    key = "remote-state-practice"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
}