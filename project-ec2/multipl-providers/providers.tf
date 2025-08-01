#1. Create a providers.tf file in the root directory of your Terraform project.
#2. In the providers.tf file, define the AWS and Azure providers. 
#For example:


provider "aws" {
  
  region = "us-east-1"
}

provider "azurerm" {
  
  subscription_id = "your the ID"
  client_id = " your clint ID"
  client_secret = " your client secrect"
  tenant_id = "your tenant ID"
}

