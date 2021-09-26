# Data Source can fetch the data from both existing recources and existing files

#fetch the data from both existing recource
data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"] ### if its created by someone you write who is owner (security team)

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

#fetch the data from both existing file

data "template_file" "user_data" { #### when y
  template = file("userdata.sh")
  vars = { ### only to change info in your userdate.sh in regular file
    environment = var.env
  }
}
// 1. Naming and Tagging convention