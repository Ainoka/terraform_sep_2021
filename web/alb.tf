resource "aws_lb_target_group" "main" {
  name     = replace(local.name, "rtype", "tg")
  port     = local.app_port
  protocol = "HTTP"
  vpc_id   = var.vpc_id
  health_check {
    path = "/"
    port = local.app_port
  }
  tags = merge(local.tags, { Name = replace(local.name, "rtype", "tg") })
}

resource "aws_lb" "main" {
  name               = replace(local.name, "rtype", "lb")
  internal           = false #external
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = var.subnets

  enable_deletion_protection = var.env == "prod" ? true : false

  tags = merge(local.tags, { Name = replace(local.name, "rtype", "lb") })
}

resource "aws_security_group" "alb_sg" {
  name        = replace(local.name, "rtype", "alb_sg")
  description = "Allow inbound traffic"
  tags        = merge(local.tags, { Name = replace(local.name, "rtype", "alb_sg") })
}

resource "aws_security_group_rule" "allow_http" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] ##We will replaced with Load Balancer SG ID
  security_group_id = aws_security_group.alb_sg.id
}

resource "aws_security_group_rule" "allow_https" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.alb_sg.id
}

resource "aws_security_group_rule" "alb_egress" {
  type              = "egress"
  from_port         = 0    #ALL PORTS
  to_port           = 0    #ALL PORTS
  protocol          = "-1" ## TCP, UDP, ICMP ## -1 amazion term defines one 
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.alb_sg.id
}

resource "aws_lb_listener" "web" {
  load_balancer_arn = aws_lb.main.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.main.arn
  }
}