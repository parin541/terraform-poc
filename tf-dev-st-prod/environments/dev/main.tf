provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

module "app" {
  source      = "../../modules/app"
  namespace   = "autoweby"
  project     = "portal"
  environment = "dev"
  appname     = "dashboard"
}
