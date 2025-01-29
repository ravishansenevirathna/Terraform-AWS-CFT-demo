variable "aws_region" {
  description = "AWS region to deploy the instance"
  default     = "us-east-1"
}


variable "ami_value" {
    description = "value for the ami"
}

variable "instance_type_value" {
    description = "value for the instance type"
}