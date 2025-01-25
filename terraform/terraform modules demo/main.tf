# if there is any created subnet use this
# variable "subnet_value" {
#     description = "value for the subnet"
# }

provider "aws" {
  region = "us-east-1" 
}

resource "aws_instance" "my-instance" {
    ami = var.ami_value
    instance_type = var.instance_type_value
    # subnet_id = 
    # key_name = "my-key-pair"
  
}