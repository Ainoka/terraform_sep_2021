#resource "aws_nat_gateway" "gw_NAT" {
#  subnet_id     = aws_subnet.subnet1.id
#  allocation_id = aws_eip.example.id
#  connectivity_type = "public"
#
#  tags = {
#    Name = "gw NAT"
#  }
#}