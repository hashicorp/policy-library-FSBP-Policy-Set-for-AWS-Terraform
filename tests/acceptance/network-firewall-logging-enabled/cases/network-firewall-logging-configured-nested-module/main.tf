provider "aws" {
  region = "us-west-2"
}

module "firewall" {
  source = "./firewall"
}