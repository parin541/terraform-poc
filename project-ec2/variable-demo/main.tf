
resource "aws_instance" "val-demo-ec2" {
  
   ami = var.ami_value
   instance_type = var.instance_type_value
}