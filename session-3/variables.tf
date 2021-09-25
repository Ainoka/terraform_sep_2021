# Input Variables
variable "ami" {
    type = string
    default = "ami-087c17d1fe0178315"
    description = "This is an AMI id for EC2 instance, Accepted Processor type 'x86' "
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "This is Instance Type"
}

variable "env" {
    type = string
    default = "dev"
    description = "This is variables for environments"
}

variable "number_of_ec2" {
    type = string
    default = "3"
    description = "number of EC2 Instance"
}

variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
    description = "The Cider Block for VPC"
}
# Default = pick this as a default value
###### Type #####
# - string = kjhfcah #$$%^ 1233
# - number = 12345
# bool = true or false
##### Description ####
##### Sensetive ####
