variable "env" {
  type    = string
  default = "dev"
}

variable "snapshot" {
  type    = bool
  default = true
}


// dev.tfvars = env=dev snapshot = true
// qa.tfvars  = env=qa  snapshoot = false
