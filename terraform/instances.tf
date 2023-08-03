resource "aws_instance" "EC2Instance1" {
  ami           = "ami-0f34c5ae932e6f0e4"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.PublicSubnet1.id
  associate_public_ip_address = true
  tags = {
    Name = "EC2Instance1"
  }
}

resource "aws_instance" "EC2Instance2" {
  ami           = "ami-0f34c5ae932e6f0e4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.PublicSubnet2.id
  associate_public_ip_address = true
  tags = {
    Name = "EC2Instance2"
  }
}