resource "aws_db_instance" "this" {
  allocated_storage = 10
  instance_class    = "db.t3.micro"

  storage_encrypted = false
}