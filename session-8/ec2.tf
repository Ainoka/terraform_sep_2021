resource "aws_instance" "my_ec2" {
  ami                    = data.aws_ami.amazon_linux_2.image_id # Reference to Input Variable
  instance_type          = var.instance_type                    # Reference to Input Variable
  vpc_security_group_ids = [aws_security_group.my_sg.id]        # Reference to Resource
  # when you reference to resource = first-label.second-label.attribute
  key_name = aws_key_pair.terraform_server.key_name
  tags = {
    Name = var.env
  }
  provisioner "file" {
    source      = "/home/ec2-user/terraform_sep_2021/session-8/index.html" ###Where file existing
    destination = "/tmp/index.html"                                        ###Where you wanna send it?

    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
  provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
      "sudo cp /tmp/index.html /var/www/html/index.html"# ###It's run only when instance gets bootstrapped, but it does not reboot the 
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
}

resource "aws_key_pair" "terraform_server" {
  key_name   = "terraform_server-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "null_resource" "local_script" { ##Null Resource means do not write to tfstate file
  provisioner "local-exec" {
    command = "echo 'this is a test' > local-exec.txt"
  }
}