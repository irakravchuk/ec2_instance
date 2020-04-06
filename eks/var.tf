variable "instance_count" {
  type = string
  default = "1"
  }

variable "region" {
  type = string
  default = "us-east-1"
   }

variable "instance_type" {
  type = string
  default = "t2.nano"
}

variable "network" {
  type = string
  default = "vpc-596aa03e"
 }

variable "subnet" {
  type = string
default = "subnet-7e3fd71a"
  }

variable "associate_public_ip" {
  type    = bool
  default = true
}

variable "tags" {
  type = map
  default = {
    us-east-1 = "image-1234"
    us-west-2 = "image-4567"
  }
}

variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = "string"
}

variable "availability_zone" {
  description = "AWS availability zone to launch the VM into"
  default     = "us-east-1a"
}

variable "primary_region" {
  description = "AWS region to launch primary db instances for global database"
  default     = "us-east-1"
}

variable "secondary_region" {
  description = "AWS region to launch secondary db instances for global database"
  default     = "us-east-1"
}

variable "aurora_instance_class" {
  default = "db.t2.small"
}

variable "first_subnet_id" {
  description = "VPC Subnet into which to launch your db instance"
  default     = "subnet-3d82d101"
}

variable "second_subnet_id" {
  description = "VPC Subnet into which to launch your db instance"
  default     = "subnet-b347fefb"
}

variable "third_subnet_id" {
  description = "VPC Subnet into which to launch your db instance"
  default     = "subnet-7e3fd71a"
}
