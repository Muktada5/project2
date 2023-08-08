provider "aws" {
   region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket    = "my-s3-mnp-bucket"
    key       = "MNP-Tech/modules/ec2/terraform.tfstate"
    region    = "us-east-1"
    encrypt   = true
  }
}
