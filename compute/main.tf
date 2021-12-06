data "aws_ami" "andyec2server" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  
  }
resource "aws_instance" "kwabsserver" {
   ami           = data.aws_ami.andyec2server.id
  instance_type = "t3.micro"

  tags = {
    Name = "kwabsserver"
  }
  subnet_id = var.subnet_pub

}

  
