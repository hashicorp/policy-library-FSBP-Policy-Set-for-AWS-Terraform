resource "aws_db_instance" "this" {
  allocated_storage               = 10
  instance_class                  = "db.t3.micro"
  engine                          = "mysql"

  storage_encrypted = true
}

provider "aws" {
  region = "us-west-2"
}