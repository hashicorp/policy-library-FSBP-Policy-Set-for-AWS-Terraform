terraform {
  required_providers {
    aws = {
      version = " ~> 3.0"
      source  = "registry.terraform.io/hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

module "sagemaker-notebook-instance" {
  source                          = "./sagemaker-notebook-instance"
  direct_internet_access_variable = "Disabled"
}
