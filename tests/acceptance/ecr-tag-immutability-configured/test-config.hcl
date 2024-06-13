name = "ecr-tag-immutability-configured"

disabled = false

case "Tag immutability configured" {
    path = "./cases/immutability-configured"
    expectation {
        result = true
    }
}

case "Missing immutability attribute" {
    path = "./cases/missing-immutability-attribute"
    expectation {
        result = false
    }
}

case "Mutable tag" {
    path = "./cases/mutable-tag"
    expectation {
        result = false
    }
}

