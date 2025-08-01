provider "aws" {
  
  region = "us-east-1"
}


resource "aws_instance" "parin-remote-ec2" {
  ami = "ami-020cba7c55df1f615"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "parin-s3" {
  
  bucket = "parin-s3-demo-remote"

}

resource "aws_dynamodb_table" "terraform_lock" {
  
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

attribute {
   name = "LockID"
   type = "S"
}

}