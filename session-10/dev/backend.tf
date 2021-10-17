terraform {
  backend "s3" {
    bucket = "terraform-session-september-2021-remote-backend"
    key    = "session-10/dev/terraform.tfstate"
    region = "us-west-1"
  }
}
