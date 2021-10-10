#variable "env" {
#  default = "dev"
#}

variable "region" {
  default = "us-east-2"
}

variable "project" {
  default = "matrix"
}

variable "stage" {
  default = "nonprod"

}
# Input Variables

variable "ami" {
  type        = string
  default     = "ami-0c2d06d50ce30b442"
  description = "This is an AMI id for EC2 instance, Accepted Processor type 'x86'"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "This is an instance type for EC2"
}

variable "env" {
  type        = string
  default     = "dev"
  description = "This is a variable for the environments"
}

variable "number_of_ec2" {
  type        = number
  default     = "1"
  description = "Number of EC2 instances"
}

variable "sg_ports" {
  type        = list(string)
  default     = ["22", "80", "443", "3306", "5432"]
  description = "A list of ports for my security group"
}
variable "ports_cidr" {
  type    = list(string)
  default = ["10.0.0.0/16", "0.0.0.0/0", "0.0.0.0/0", "10.0.0.0/16", "10.0.0.0/16"]
}

####### Default ###### = pick this as a default value
####### Type ########
# - string = !@#$%qwer789
# - number = 1234567890
# - bool   = True, False
####### Description #######
####### Sensetive  #######