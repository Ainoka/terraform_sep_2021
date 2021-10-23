terraform {
  backend "s3" {
    bucket = "terraform-session-september-2021-remote-backend"
    key    = "terraform.tfstate"
    region = "us-west-1"
    #dynamodb_table = "terraform-state-lock"
    workspace_key_prefix = "session-11"
  }
}