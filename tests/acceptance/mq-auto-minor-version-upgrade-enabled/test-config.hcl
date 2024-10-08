name = "mq-auto-minor-version-upgrade-enabled"

disabled = false

case "MQ Broker with Auto Minor Version Upgrade set to False" {
    path = "./cases/mq-broker-with-auto-minor-version-upgrade-set-to-false"
    expectation {
        result = false
    }
}

case "MQ Broker with Auto Minor Version Upgrade set to True" {
    path = "./cases/mq-broker-with-auto-minor-version-upgrade-set-to-true"
    expectation {
        result = true
    }
}

case "MQ Broker with Auto Minor Version Upgrade set to True Nested" {
    path = "./cases/mq-broker-with-auto-minor-version-upgrade-set-to-true-nested"
    expectation {
        result = true
    }
}

case "MQ Broker with No Auto Minor Version Upgrade Attribute" {
    path = "./cases/mq-broker-with-no-auto-minor-version-upgrade-attribute"
    expectation {
        result = false
    }
}
