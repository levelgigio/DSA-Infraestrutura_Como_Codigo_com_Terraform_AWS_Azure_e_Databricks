provider "aws" {
  region = "us-east-2"
}

resource "aws_security_group" "sg_permite_http" {
  
  name = "sg_permite_http"
  
  description = "Security Group EC2 Instance"

  ingress {

    description = "Inbound Rule"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {

    description = "Outbound Rule"
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

    }

}

resource "aws_instance" "dsa_instance" {

  ami = "ami-0a0d9cf81c479446a"
  
  instance_type = "t2.micro"

  count = 3
  
  vpc_security_group_ids = [aws_security_group.sg_permite_http.id]

  user_data = base64encode(templatefile("script.sh", {
        instance_count      = count.index
      } ))

  tags = {
    Name = "lab3-instance-${count.index}-terraform"
  }
}


