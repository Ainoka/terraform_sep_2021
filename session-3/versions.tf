terraform {                                   ### for better ingenering!
  required_version = "~> 1.0.0"              ### Terraform Version! you can use lazy constraint "~>" #0.14.0-0.14.9#
  required_providers {                        ### ">= 0.13, < 0.14" #should be less then 0.14 and higher or equal to 0.13
    aws = {                                   
      source  = "hashicorp/aws"
      version = "~> 3.59.0"                   ### Provider Version
    }
  }
}