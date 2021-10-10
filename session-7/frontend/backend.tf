terraform {
  backend "s3" {
    bucket         = "terraform-bucket-session-7"
    key            = "session-7/frontend/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}