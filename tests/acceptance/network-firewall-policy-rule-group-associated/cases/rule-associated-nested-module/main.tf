provider "aws" {
  region = "us-west-2"
}

module "firewall-policy" {
  source = "./firewall-policy"
}