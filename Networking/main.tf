# networking main
resource "aws_vpc" "mysatvpc" {
  cidr_block = var.vpcCidr
  instance_tenancy = "default"
  tags = {
    Name = "mysatvpc"
  }
}
resource "aws_subnet" "myPubSbt" {
  vpc_id = aws_vpc.mysatvpc.id
  cidr_block = var.PubsubCidr
  map_public_ip_on_launch = true
  tags = {
    Name = "myPubSbt"
  }
}
resource "aws_subnet" "myPrivateSbt" {
  vpc_id = aws_vpc.mysatvpc.id
  cidr_block = var.PrivatesubCidr
  tags = {
    Name = "myPrivateSbt"
  }
}

  

