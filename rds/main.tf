provider "aws" {
  region = "eu-west-1"
}

provider "aws" {
  alias  = "primary"
  region = var.primary_region
  
}

#provider "aws" {
#  alias  = "secondary"
#  region = var.secondary_region
  
#}


resource "aws_rds_global_cluster" "example" {
 provider = "aws.primary"

  global_cluster_identifier = "example"
}

#resource "aws_db_instance" "Kostyan_Kotov_Default_Test_QA_inctance_with_size_300" {
#  #count = 200
##  allocated_storage    = 20
#  storage_type         = "gp2"
#  engine               = "mysql"
#  engine_version       = "8.0.16"
#  instance_class       = "db.r5.24xlarge"
#  name                 = "mydb"
#  username             = "foo"
#  password             = "foobarbaz"
#  parameter_group_name = "default.mysql5.7"
#}

resource "aws_db_instance" "Kostyan_Kotov_Default_Test_QA_inctance_with_MSSQLSE" {
  #count = 200
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "sqlserver-se"
  engine_version       = "14.00.3223.3.v1"
  instance_class       = "db.x1e.xlarge"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.sqlserver-se-14.0"
}


############################################################################################

resource "aws_rds_cluster" "primary" {
  provider = "aws.primary"

  engine_mode               = "serverless"
 # global_cluster_identifier = aws_rds_global_cluster.example.id
}

resource "aws_rds_cluster_instance" "primary" {
  provider = "aws.primary"

  cluster_identifier = aws_rds_cluster.primary.id
  instance_class = var.aurora_instance_class
  engine = "aurora"
}

############################################################################################

#resource "aws_rds_cluster" "secondary" {
#  depends_on = ["aws_rds_cluster_instance.primary"]
#  provider   = "aws.secondary"

#  engine_mode               = "serverless"
#  global_cluster_identifier = aws_rds_global_cluster.example.id
#}

#resource "aws_rds_cluster_instance" "secondary" {
# provider = "aws.secondary"

#  cluster_identifier = aws_rds_cluster.secondary.id
#  instance_class = var.aurora_instance_class
#  engine = "aurora"
#}
