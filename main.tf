provider "aws" {
 # region     = "us-east-1"
}

resource "aws_instance" "scalr" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet
  vpc_security_group_ids = var.sg
  key_name               = var.key
  count                  = var.instance_count
}
