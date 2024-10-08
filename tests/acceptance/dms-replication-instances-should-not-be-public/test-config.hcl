name = "dms-replication-instances-should-not-be-public"

disabled = false

case "DMS Replication Instance With no Publicly Accessible Attribute" {
    path = "./cases/dms-replication-instance-with-no-publicly-accessible-attribute"
    expectation {
        result = true
    }
}

case "DMS Replication Instance With Publicly Accessible False" {
    path = "./cases/dms-replication-instance-with-publicly-accessible-false"
    expectation {
        result = true
    }
}

case "DMS Replication Instance With Publicly Accessible False Nested" {
    path = "./cases/dms-replication-instance-with-publicly-accessible-false-nested"
    expectation {
        result = true
    }
}

case "DMS Replication Instance With Publicly Accessible True" {
    path = "./cases/dms-replication-instance-with-publicly-accessible-true"
    expectation {
        result = false
    }
}
