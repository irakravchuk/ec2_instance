#variable "region" {
 # description = "Region"
#}

variable "instance_type" {
  description = "Instance Type"
  default = "f1-micro"
}

variable "instance_count" {
  description = "Number of instances to deploy"
  default = "1"
}

variable "subnet" {
description = "Subnet ID"
}

variable "sg" {
  description = "AWS Secruity Group"
  type        = list(string)
}

variable "key" {
  description = "AWS Key"
}

variable "vpc_id" {
description = "VPC"
}

variable "ami" {
  description = "AMI"
  default = "1"
}
