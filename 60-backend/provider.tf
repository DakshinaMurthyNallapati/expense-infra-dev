terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }
  
backend "s3" {

  bucket = "devsecops-tf-remote-state-dev"
  key    = "expense-dev-backend" #we should have unique keys with in the bucket, same key should not be 
    # there in other repo or project
  region = "us-east-1"
  dynamodb_table = "devsecops-tf-state-dev"
  
}

}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}