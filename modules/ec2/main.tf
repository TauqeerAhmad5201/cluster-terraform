resource "aws_instance" "gitlab" {
  count         = 3
  ami           = "ami-12345678"
  instance_type = "t3.medium"
  subnet_id     = aws_subnet.main.id
}