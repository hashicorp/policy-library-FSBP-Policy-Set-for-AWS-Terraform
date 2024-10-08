provider "aws" {
  region = "us-west-2"
}

resource "aws_mq_configuration" "test" {
  description    = "Example Configuration"
  name           = "example"
  engine_type    = "ActiveMQ"
  engine_version = "5.17.6"

  data = <<DATA
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<broker xmlns="http://activemq.apache.org/schema/core">
  <plugins>
    <forcePersistencyModeBrokerPlugin persistenceFlag="true"/>
    <statisticsBrokerPlugin/>
    <timeStampingBrokerPlugin ttlCeiling="86400000" zeroExpirationOverride="86400000"/>
  </plugins>
</broker>
DATA
}

resource "aws_security_group" "example" {
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_mq_broker" "example" {
  broker_name = "example"

  configuration {
    id       = aws_mq_configuration.test.id
    revision = aws_mq_configuration.test.latest_revision
  }

  engine_type                = "ActiveMQ"
  engine_version             = "5.17.6"
  host_instance_type         = "mq.t2.micro"
  security_groups            = [aws_security_group.example.id]
  auto_minor_version_upgrade = false
  user {
    username = "ExampleUser"
    password = "New-pass123."
  }
}
