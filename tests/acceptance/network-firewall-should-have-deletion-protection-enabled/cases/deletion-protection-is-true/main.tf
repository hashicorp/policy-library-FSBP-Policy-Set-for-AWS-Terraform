provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "example-vpc"
  }
}

resource "aws_subnet" "example" {
  vpc_id     = aws_vpc.example.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "example-subnet"
  }
}

resource "aws_networkfirewall_firewall_policy" "example" {
  name = "example-policy"

  firewall_policy {
    stateless_rule_group_reference {
      resource_arn = "arn:aws:network-firewall:us-west-2:123456789012:stateless-rulegroup/example"
      priority     = 100
    }

    stateless_default_actions          = ["aws:forward_to_sfe"]
    stateless_fragment_default_actions = ["aws:forward_to_sfe"]

    stateful_rule_group_reference {
      resource_arn = "arn:aws:network-firewall:us-west-2:123456789012:stateful-rulegroup/example"
    }
  }

  tags = {
    Name = "example-firewall-policy"
  }
}

resource "aws_networkfirewall_firewall" "example" {
  name                = "example-firewall"
  firewall_policy_arn = aws_networkfirewall_firewall_policy.example.arn
  vpc_id              = aws_vpc.example.id

  subnet_mapping {
    subnet_id = aws_subnet.example.id
  }

  delete_protection = true

  tags = {
    Tag1 = "Value1"
    Tag2 = "Value2"
  }

  timeouts {
    create = "40m"
    update = "50m"
    delete = "1h"
  }
}
