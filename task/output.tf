# Output VAriables

output "my_sg_id" {
    value = aws_security_group.my_sg.id
}

output "gw" {
    value = aws_internet_gateway.gw.id
}

output "gw_NAT" {
    value = aws_subnet.subnet1.id
}