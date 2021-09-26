resource "aws_route_table" "PUBLIC" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "PUBLIC"
  }
}

resource "aws_route_table_association" "igw" {
  gateway_id     = aws_internet_gateway.gw.id
  route_table_id = aws_route_table.PUBLIC.id
}

resource "aws_route_table" "PRIVATE" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "PRIVATE"
  }
}

resource "aws_route_table_association" "pr_igw" {
  #gateway_id     = aws_internet_gateway.gw.id
  subnet_id     = aws_subnet.subnet1.id
  route_table_id = aws_route_table.PRIVATE.id
}