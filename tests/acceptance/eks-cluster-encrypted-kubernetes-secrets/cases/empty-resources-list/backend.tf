terraform {
  cloud {
    workspaces {
      name = "eks-cluster-encrypted-kubernetes-secrets"
    }
  }
}