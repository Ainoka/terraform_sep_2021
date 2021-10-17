# Input Variablgit es
variable "ami" {
  type        = string
  default     = "ami-087c17d1fe0178315" # write your ami #
  description = "This is an AMI id for EC2 instance, Accepted Processor type 'x86' "
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "This is Instance Type"
}

variable "env" {
  type        = string
  default     = "dev"
  description = "This is variables for environments"
}

variable "number_of_ec2" {
  type        = string
  default     = "1"
  description = "number of EC2 Instance"
}

variable "cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "VPC Cider Block range"
}

variable "sg_ports" {
  type        = list(string)
  default     = ["22", "80", "443", "3306", "5432"]
  description = "This is variables for sg ports"
}

variable "ports_cider" {
  type        = list(string)
  default     = ["10.0.0.0/16", "0.0.0.0/0", "0.0.0.0/0", "10.0.0.0/16", "10.0.0.0/16"]
  description = "This is cider block for sg ports"
}

# Default = pick this as a default value
###### Type #####
# - string = kjhfcah #$$%^ 1233
# - number = 12345
# bool = true or false
##### Description ####
##### Sensetive ####
