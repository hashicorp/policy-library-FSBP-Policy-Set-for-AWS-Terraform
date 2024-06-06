name = "dynamo-db-tables-point-in-time-recovery-enabled"

disabled = false

case "Point in time recovery enabled" {
    path = "./cases/point-in-time recovery-enabled"
    expectation {
        result = true
    }
}

case "Point in time recovery enabled nested module" {
    path = "./cases/point-in-time-recovery-enabled-nested-module"
    expectation {
        result = false
    }
}

case "Point in time recovery disabled" {
    path = "./cases/point-in-time-recovery-disabled"
    expectation {
        result = false
    }
}

case "Point in time recovery undefined" {
    path = "./cases/point-in-time-recovery-undefined"
    expectation {
        result = false
    }
}