name = "elb-ensure-multi-az-configuration-classic-load-balancer"

disabled = false

case "Classic load balancer with expected number of availability zones" {
    path = "./cases/expected-number-of-azs"
    expectation {
        result = true
    }
}

case "Classic load balancer with expected number of subnets" {
    path = "./cases/expected-number-of-subnets"
    expectation {
        result = true
    }
}

case "Classic load balancer with unexpected number of availability zones" {
    path = "./cases/unexpected-number-of-azs"
    expectation {
        result = false
    }
}

case "Classic load balancer with unexpected number of subnets" {
    path = "./cases/unexpected-number-of-subnets"
    expectation {
        result = false
    }
}

case "Classic load balancer with missing availability zones" {
    path = "./cases/missing-azs-input"
    expectation {
        result = false
    }
}

case "Classic load balancer with missing subnets" {
    path = "./cases/missing-subnets-input"
    expectation {
        result = false
    }
}

