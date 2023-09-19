data "aws_ami" "amazon-linux-2" {
 most_recent = true


 filter {
   name   = "owner-alias"
   values = ["amazon"]
 }


 filter {
   name   = "name"
   values = ["amzn2-ami-hvm*"]
 }
}

resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id = var.sec_group_id
  network_interface_id = aws_instance.web.primary_network_interface_id
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  subnet_id = var.public_subnet_id
  vpc_security_group_ids = [var.sec_group_id]
  tags = {
    Name = "HelloWorld"
  }
  user_data = var.user_data
}

