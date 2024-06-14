name = "dynamo-db-tables-scales-capacity-with-demand"

disabled = false

case "ddb autoscale nested module" {
    path = "./cases/ddb-autoscale-nested-module"
    expectation {
        result = true
    }
}

case "ddb autoscale policy undefined" {
    path = "./cases/ddb-autoscale-policy-undefined"
    expectation {
        result = false
    }
}

case "ddb autoscale target undefined" {
    path = "./cases/ddb-autoscale-target-undefined"
    expectation {
        result = false
    }
}

case "ddb autoscale success" {
    path = "./cases/success"
    expectation {
        result = true
    }
}