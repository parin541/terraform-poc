terraform {
  backend "s3" {
    bucket = "parin-s3-demo-remote" 
    key    = "parin/terraform.tfstate"
    region = "us-east-1"
   # dynamodb_table = "terraform_lock"
 }
}


