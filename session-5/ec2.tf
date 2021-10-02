resource "aws_instance" "my_ec2" {
  count                  = var.number_of_ec2
  ami                    = var.ami                       ###data.aws_ami.ubuntu.id ### = reference doesn't take "" ### Reference to Input Varisble
  instance_type          = var.instance_type             ### Reference to Input Variable
  vpc_security_group_ids = [aws_security_group.my_sg.id] ### when youn reference to recoure = first-label.second-lable.attribute if you have multiple SG (groups) make a list with [], [], ### Referend to Resource

  tags = {
    Name = var.env
  }
}

### Any programming, String goes with ""
### Whenever you hard code 
### ami-029c64b3c205e6cce 