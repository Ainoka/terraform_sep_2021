resource "aws_vpc" "MAIN" {
  cidr_block                       = "10.1.0.0/16"
  assign_generated_ipv6_cidr_block = true
}

resource "aws_egress_only_internet_gateway" "egress_only_ig" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "MAIN"
  }
}