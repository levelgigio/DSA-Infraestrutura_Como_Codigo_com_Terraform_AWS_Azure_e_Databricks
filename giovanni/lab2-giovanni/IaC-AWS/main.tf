provider "aws" {
  region  = var.region
}

resource "aws_instance" "lab2" {
  ami           = var.ami  # AMI na AWS
  instance_type = var.instance_type
  subnet_id = var.subnets[0]

  tags = {
    Name = "Instancia 1"
  }
}

resource "aws_instance" "lab2" {
  ami           = var.ami  # AMI na AWS
  instance_type = var.instance_type
  subnet_id = var.subnets[1]

  tags = {
    Name = "Instancia 2"
  }
}