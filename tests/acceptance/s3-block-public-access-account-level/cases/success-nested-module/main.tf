module "s3" {
  source = "./s3"
}

provider "aws" {
  region = "us-west-2"
}