variable "base_domain" {
  type    = string
  default = "aina.link"
}

variable "env" {
  type    = string
  default = "dev"
}

variable "region" {
  type    = string
  default = "us-west-1"
}

variable "vpc_id" {
  type    = string
  default = "vpc-034ab665"
}

variable "subnets" {
  type    = list(string)
  default = ["subnet-71ac0217", "subnet-a2b64cf8"]
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "asg_max" {
  type    = number
  default = 5
}

variable "asg_desird" {
  type    = number
  default = 3
}