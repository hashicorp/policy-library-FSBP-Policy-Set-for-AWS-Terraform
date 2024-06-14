terraform {
  cloud {
    workspaces {
      name = "eks-cluster-endpoints-restrict-public-access"
    }
  }
}