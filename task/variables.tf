# Input Variablgit es
variable "ami" {
    type = string
    default = "ami-087c17d1fe0178315" # write your ami
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
    default = "1"
    description = "number of EC2 Instance"
}

variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}
variable "rt_cidr_block" {
    type = string
    default = "10.0.1.0/24"
}

variable "sub1" {
    type = string
    default = "task1"
}
variable "sub2" {
    type = string
    default = "task2"
}
variable "sub3" {
    type = string
    default = "task3"
}

variable "sub_cb1" {
    type = string
    default = "10.0.1.0/24"
}

variable "sub_cb2" {
    type = string
    default = "10.0.2.0/24"
}

variable "sub_cb3" {
    type = string
    default = "10.0.3.0/24"
}

variable "number_of_subnet" {
    type = string
    default = "1"
    description = "number of Subnet"
}

variable "pr_sub_cb1" {
    type = string
    default = "10.0.11.0/24"
}

variable "pr_sub_cb2" {
    type = string
    default = "10.0.12.0/24"
}

variable "pr_sub_cb3" {
    type = string
    default = "10.0.13.0/24"
}

variable "pr_sub1" {
    type = string
    default = "task1"
}
variable "pr_sub2" {
    type = string
    default = "pr_task2"
}
variable "pr_sub3" {
    type = string
    default = "pr_task3"
}