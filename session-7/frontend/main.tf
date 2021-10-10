resource "aws_instance" "test1" {
  count         = var.number_of_ec2
  ami           = var.ami           # Reference to Input Variable
  instance_type = var.instance_type # Reference to Input Variable
  # when you reference to resource = first-label.second-label.attribute

  tags = {
    Name = replace(local.name, "rtype", "EC2-1")
    Tags = local.common_tags
  }
}

resource "aws_instance" "test2" {
  count         = var.number_of_ec2
  ami           = var.ami           # Reference to Input Variable
  instance_type = var.instance_type # Reference to Input Variable
  # when you reference to resource = first-label.second-label.attribute

  tags = {
    Name = replace(local.name, "rtype", "EC2-2")
    Tags = local.common_tags

  }
}

resource "aws_instance" "test3" {
  count         = var.number_of_ec2
  ami           = var.ami           # Reference to Input Variable
  instance_type = var.instance_type # Reference to Input Variable
  # when you reference to resource = first-label.second-label.attribute

  tags = {
    Name = replace(local.name, "rtype", "EC2-3")
    Tags = local.common_tags
  }
}