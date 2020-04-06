

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
