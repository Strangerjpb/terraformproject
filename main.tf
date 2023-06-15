provider "aws" {
region = "ap-south-1"
access_key = "AKIAYDGTNESDHK4KFSM4"
secret_key = "ym4coOXO6AONq9u/kuAJA1u9E6bjNIWB86sKUkqs"
}

resource "aws_instance" "ec2_example" {
  ami                    = "ami-03cb1380eec7cc118"
  instance_type          = var.instance_type
  tags = {
    Name = "Terra-server"
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "ap-south-1a"
  size              = 20

  tags = {
    Name = "HelloWorld"
  }
}



