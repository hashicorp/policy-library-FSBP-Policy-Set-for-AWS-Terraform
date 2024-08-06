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

module "sagemaker_endpoint_instances" {
  source                          = "./sagemaker-enspoint-instances"
  initial_instance_count_variable = 10
}
