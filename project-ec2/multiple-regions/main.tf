provider "aws" {

    alias = "use1"
    region = "us-east-1"

}

provider "aws" {

    alias = "usw2"
    region = "us-west-2"
}


resource "aws_instance" "my-vpc2" {
  
    ami = "ami-020cba7c55df1f615"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    provider = "aws.use1" 
}


resource "aws_instance" "my-vpc3" {
  
    ami = "ami-020cba7c55df1f615"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    provider = "aws.usw2" 
}