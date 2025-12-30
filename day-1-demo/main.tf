provider "aws" {
  
  region = "us-east-1" # set desired AWS region
}

resource "aws_instance" "example-ec2" {
  
  ami = "ami-020cba7c55df1f615" # Assign a specific AMI ID
  instance_type = "t2.micro"

}