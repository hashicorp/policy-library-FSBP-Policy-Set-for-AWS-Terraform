terraform {
  cloud {
    workspaces {
      name = "redshift-cluster-should-be-encrypted-at-rest"
    }
  }
}
