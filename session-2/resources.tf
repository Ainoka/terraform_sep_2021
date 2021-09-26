resource "aws_instance" "first_ec2" {
  ami           = "ami-087c17d1fe0178315" # key = value = called argument
  instance_type = "t2.micro"              # key = value
#  tags = {                                # key = value
#    Name        = "first"
#    Environment = "dev"
#  }
}