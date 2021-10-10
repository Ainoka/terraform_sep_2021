data "terraform_remote_state" "rds" {
  backend = "s3"
  config = {
    bucket = "terraform-bucket-session-7"
    key    = "session-7/backend/terraform.tfstate"
    region = "us-east-1"
  }
}