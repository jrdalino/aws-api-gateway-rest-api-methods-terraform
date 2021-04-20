terraform {
  backend "s3" {
    region         = "ap-southeast-1"
    bucket         = "623552185285-ap-southeast-1-terraform-state"
    key            = "bbsdm-user-aws-api-gateway-terraform.tfstate"
    encrypt        = "true"
    dynamodb_table = "terraform-state-lock"
  }
}