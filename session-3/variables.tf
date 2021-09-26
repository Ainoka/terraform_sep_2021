# Input Variablgit es
variable "ami" {
    type = string
    default = "---------------" # write your ami #
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

# Default = pick this as a default value
###### Type #####
# - string = kjhfcah #$$%^ 1233
# - number = 12345
# bool = true or false
##### Description ####
##### Sensetive ####
