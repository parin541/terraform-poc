
variable "ami_id_value" {

    description = "EC2 ami value"
    type = string
    default = "ami-020cba7c55df1f615"
    
}

variable "instance_type_value" {

    description = "ec2 instance type"
    type = string 
    default = "t2.micro"
}

terraform {
   required_providers {
     
     aws = {
        source = "hashicorp/aws"
        version = "5.99.1"
     }
   }
}


#provider "aws" {
#    region = "us-east-1"
#}


resource "aws_instance" "var-example" {

    name = "var-demo"
    ami = var.ami_id_value
    instance_type = var.instance_type_value
}

output "op-public-ip" {
  
  value = aws_instance.var-example.public_ip
}
  
