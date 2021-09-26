resource "aws_subnet" "subnet1" {
  #count      = var.number_of_subnet
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_cb1
  
  tags = {
    Name = var.sub1
  }
}
resource "aws_subnet" "subnet2" {
  count      = var.number_of_subnet
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_cb2

  tags = {
    Name = var.sub2
  }
}
resource "aws_subnet" "subnet3" {
  count      = var.number_of_subnet
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_cb3

  tags = {
    Name = var.sub3
  }
}

resource "aws_subnet" "private_subnet1" {
  count      = var.number_of_subnet
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pr_sub_cb1

  tags = {
    Name = var.pr_sub1
  }
}
resource "aws_subnet" "private_subnet2" {
  count      = var.number_of_subnet
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pr_sub_cb2

  tags = {
    Name = var.pr_sub2
  }
}

resource "aws_subnet" "private_subnet3" {
  count      = var.number_of_subnet
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pr_sub_cb3

  tags = {
    Name = var.pr_sub3
  }
}