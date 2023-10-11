
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test-instance" {
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    
}
