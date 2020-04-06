version = "v1"

variable "region" {
  policy = "cloud.locations"
  conditions = {
    cloud = "ec2"
  }
}

variable "instance_type" {
  policy = "cloud.instance.types"
  conditions = {
    cloud = "ec2"
  }
}

variable "network" {
  policy = "cloud.networks"
  conditions = {
    cloud = "ec2"
    cloud.location = "${var.region}"
  }
}

variable "subnet" {
  policy = "cloud.subnets"
  conditions = {
    cloud = "ec2"
    cloud.location = "${var.region}"
    cloud.network = "${var.network}"
  }
}

variable "tags" {
  policy = "cloud.tags"
  conditions = {
    cloud = "ec2"
    os.type = "linux"
  }
}

variable "hide"{
global_variable = "hide"
 }
