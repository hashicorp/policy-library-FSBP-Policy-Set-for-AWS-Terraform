provider "aws" {
  region = "us-west-2"
}

resource "aws_networkfirewall_rule_group" "example" {
  description = "Stateless Rate Limiting Rule"
  capacity    = 100
  name        = "example"
  type        = "STATELESS"

  tags = {
    Tag1 = "Value1"
    Tag2 = "Value2"
  }
}