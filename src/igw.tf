resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.myvpc1.id
  tags = {
    Name = "igw-my"
  }
}
