# main.tf

provider "aws" {
  region = "ap-south-1"  # Mumbai region
}

resource "aws_instance" "ubuntu_server" {
  ami           = "ami-0d8f6eb4f641ef691"  # Ubuntu Server 20.04 LTS (HVM), SSD Volume Type - as of writing
  instance_type = "t2.micro"               # Free tier instance type

  key_name = "my-key-pair"                 # Replace with your key pair name

  vpc_security_group_ids = [aws_security_group.ssh.id]

  tags = {
    Name = "TerraformUbuntuServer"
  }
}

resource "aws_security_group" "ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}
