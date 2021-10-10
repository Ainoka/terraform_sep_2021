data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"] ### if its created by someone you write who is owner (security team)

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}