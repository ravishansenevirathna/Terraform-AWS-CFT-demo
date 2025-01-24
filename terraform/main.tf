provider "aws" {
  region = "us-east-1" 
}


resource "aws_instance" "example" {
  ami           = "ami-04b4f1a9cf54c11d0" 
  instance_type = "t2.micro"
  subnet_id = "subnet-00f6524d0ee6da3d4"
  key_name = "demo1"         
}
