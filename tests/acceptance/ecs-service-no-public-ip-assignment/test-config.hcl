name = "ecs-service-no-public-ip-assignment"

disabled = false

case "ECS service with assigned public ip" {
    path = "./cases/ecs-services-with-public-ips"
    expectation {
        result = false
    }
}

case "ECS service without assigned public IPs" {
    path = "./cases/no-ecs-services-with-public-ips"
    expectation {
        result = true
    }
}

case "ECS service without networking configuration" {
    path = "./cases/ecs-services-without-networking-config"
    expectation {
        result = true
    }
}