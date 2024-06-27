resource "aws_db_instance" "this" {
  allocated_storage = 10
  instance_class    = "db.t3.micro"

  storage_encrypted = false
  backup_retention_period = 8
}

provider "aws" {
  region = "us-west-2"
}