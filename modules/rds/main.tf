resource "aws_db_instance" "postgres" {
  identifier            = "rds-postgres"
  engine                = "postgres"
  instance_class        = "db.t3.micro"
  allocated_storage     = 20
  username             = "admin"
  password             = "securepassword"
  publicly_accessible  = false
  skip_final_snapshot  = true
}