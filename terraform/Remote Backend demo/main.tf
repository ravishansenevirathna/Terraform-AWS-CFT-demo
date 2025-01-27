provider "aws" {
  region = "us-east-1" 
}


resource "aws_instance" "example" {
  ami           = "ami-04b4f1a9cf54c11d0" 
  instance_type = "t2.micro"
  key_name = "demo1"         
}

# for storing tfstate in the s3
resource "aws_s3_bucket" "s3-bucket" {
    bucket = "ravishan-20-my-bucket"
}

# for locking mechanism using dynamodb
resource "aws_dynamodb_table" "terraform-lock" {
    name = "terraform-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
  
}

