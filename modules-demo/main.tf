provider "aws" {
  region = "us-east-1"
}

module "ec2_instace" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0cbbe2c6a1bb2ad63"
  instance_type_value = "t2.micro"
}