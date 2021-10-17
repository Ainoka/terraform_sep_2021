resource "aws_security_group" "my_sg" {
  name        = "SSH"
  description = "Allow SSH inbound traffic"
}

resource "aws_security_group_rule" "ingress-ssh" {
  count             = 5
  type              = "ingress"
  from_port         = element(var.sg_ports, count.index) ### count.index = 0 1 2 3 4 
  to_port           = element(var.sg_ports, count.index)
  protocol          = "tcp"
  cidr_blocks       = [element(var.ports_cider, count.index)]
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


### "" = when you hard code
### NO "" = when youn reference
### [] = list
### bloks you need to list, if block you can 