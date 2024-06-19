provider "aws" {
  region = "us-west-2"
}


module "elasticbeanstalk-healthreporting" {
  source = "./elasticbeanstalk-managed-platform-updates-enabled"
}
