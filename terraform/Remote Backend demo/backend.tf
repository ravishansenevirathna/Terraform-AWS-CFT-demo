terraform {
  backend "s3" {
    bucket = "ravishan-20-my-bucket"
    # create folder called "ravishan" and create "terraform.tfstate" file in there
    key    = "ravishan/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}