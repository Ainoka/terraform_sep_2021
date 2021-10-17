terraform {
  backend "s3" {
    bucket         = "terraform-session-september-remote-backend-2021"
    key            = "session-5/terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-state-lock-table"
  }
}