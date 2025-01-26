provider "aws" {
  region = "us-east-1" 
}

module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami_value = "ami-04b4f1a9cf54c11d0"
    instance_type_value = "t2.micro"
  
}

module "s3_bucket" {
  source        = "./modules/s3_bucket"
  bucket_name   = "my-example-bucket"
  acl           = "private"
  force_destroy = true
  tags = {
    Environment = "dev"
    Project     = "terraform-demo"
  }
}