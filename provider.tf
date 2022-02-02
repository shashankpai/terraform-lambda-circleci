terraform {
  required_version = "~> 0.14" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "recipe-app-devops-terrastate"
    key    = "dev/lambda-terraform-state.tfstate"
    region = "us-east-1"
    /*
    # Enable during Step-09
    # For State Locking
    dynamodb_table = "terraform-dev-state-table"
*/
  }
}



# Provider block
provider "aws" {
   region = "us-east-1"
 }