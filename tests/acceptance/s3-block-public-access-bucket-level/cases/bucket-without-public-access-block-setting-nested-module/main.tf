module "s3" {
  source = "./s3"

  bucket_name = "test-bucket"
}

provider "aws" {
  region = "us-west-2"
}