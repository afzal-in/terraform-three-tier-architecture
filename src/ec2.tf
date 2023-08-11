#creating 1st EC2 instance in public subnet
resource "aws_instance" "myinstance1" {
  ami                         = "ami-049a62eb90480f276"
  instance_type               = "t2.micro"
  count                       = 1
  key_name                    = "file1"
  vpc_security_group_ids      = [aws_security_group.mywebsg.id]
  subnet_id                   = aws_subnet.public-subnet-1.id
  associate_public_ip_address = true
  user_data                   = "${file("userdata.sh")}"

  tags = {
    Name = "My public instance 1"
  }
}

#creating 2st EC2 instance in public subnet
resource "aws_instance" "myinstance2" {
  ami                         = "ami-049a62eb90480f276"
  instance_type               = "t2.micro"
  count                       = 1
  key_name                    = "file1"
  vpc_security_group_ids      = [aws_security_group.mywebsg.id]
  subnet_id                   = aws_subnet.public-subnet-2.id
  associate_public_ip_address = true
  user_data                   = "${file("userdata.sh")}"

  tags = {
    Name = "My public instance 2"
  }
}
