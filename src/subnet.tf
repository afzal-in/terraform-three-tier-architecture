resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.myvpc1.id
  cidr_block              = "10.0.128.0/19"
  map_public_ip_on_launch = true
  availability_zone       = "ap-south-1a"
  tags = {
    Name = "public-subnet 1"
  }
}


resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.myvpc1.id
  cidr_block              = "10.0.32.0/20"
  map_public_ip_on_launch = true
  availability_zone       = "ap-south-1b"
  tags = {
    Name = "public-subnet 2"
  }
}

resource "aws_subnet" "private-subnet-1" {
  vpc_id                  = aws_vpc.myvpc1.id
  cidr_block              = "10.0.48.0/20"
  map_public_ip_on_launch = false
  availability_zone       = "ap-south-1a"
  tags = {
    Name = "private-subnet 1"
  }
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id                  = aws_vpc.myvpc1.id
  cidr_block              = "10.0.64.0/19"
  map_public_ip_on_launch = false
  availability_zone       = "ap-south-1b"
  tags = {
    Name = "private-subnet 2"
  }
}
