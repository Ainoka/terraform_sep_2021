resource "aws_security_group" "my_sg" {
  name        = "SSH"
  description = "Allow SSH inbound traffic"
}

resource "aws_security_group_rule" "ingress-ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.my_sg.id
}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  description       = "SSH"
  from_port         = 0    #ALL PORTS
  to_port           = 0    #ALL PORTS
  protocol          = "-1" ## TCP, UDP, ICMP ## -1 amazion term defines one 
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.my_sg.id
}

resource "aws_security_group_rule" "ingress-apache" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.my_sg.id
}