name = "redshift-cluster-should-be-encrypted-at-rest"

disabled = false

case "Redshift Cluster with No Encrypted Attribute" {
    path = "./cases/redshift-cluster-with-no-encrypted-attribute"
    expectation {
        result = false
    }
}

case "Redshift Cluster with Encrypted False" {
    path = "./cases/redshift-cluster-with-encrypted-false"
    expectation {
        result = false
    }
}

case "Redshift Cluster with Encrypted True" {
    path = "./cases/redshift-cluster-with-encrypted-true"
    expectation {
        result = true
    }
}

case "Redshift Cluster with Encrypted True Nested" {
    path = "./cases/redshift-cluster-with-encrypted-true-nested"
    expectation {
        result = true
    }
}
