terraform {
  cloud {
    workspaces {
      name = "eks-cluster-supported-k8s-version-check"
    }
  }
}