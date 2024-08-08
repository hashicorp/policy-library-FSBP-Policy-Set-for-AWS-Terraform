provider "aws" {
  region = "us-west-2"
}

resource "aws_networkfirewall_firewall_policy" "example" {
  name = "example"

  firewall_policy {
    stateless_default_actions          = ["aws:pass"]
    stateless_fragment_default_actions = ["aws:drop"]
  }

  tags = {
    Tag1 = "Value1"
    Tag2 = "Value2"
  }
}
