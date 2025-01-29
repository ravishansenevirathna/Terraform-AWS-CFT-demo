provider "aws" {
  region = var.aws_region 
}

resource "aws_instance" "my-instance" {
    ami = var.ami_value
    instance_type = var.instance_type_value
    # subnet_id = 
    # key_name = "my-key-pair"
  
}