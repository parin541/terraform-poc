output "public-ip-address" {     #any name

    value = aws_instance.module-exp.public_ip

  
}