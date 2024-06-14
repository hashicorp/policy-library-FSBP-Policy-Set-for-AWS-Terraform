# EKS cluster endpoints should not be publicly accessible

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Compute      |

## Description

This policy checks whether an Amazon EKS cluster endpoint is publicly accessible. The policy fails if an EKS cluster has an endpoint that is publicly accessible.

When your create a new cluster, Amazon EKS creates an endpoint for the managed Kubernetes API server that you use to communicate with your cluster. By default, this API server endpoint is publicly available to the internet. Access to the API server is secured using a combination of AWS Identity and Access Management (IAM) and native Kubernetes Role Based Access Control (RBAC). By removing public access to the endpoint, you can avoid unintentional exposure and access to your cluster.

This rule is covered by the [eks-cluster-endpoints-restrict-public-access](../../policies/eks-cluster-endpoints-restrict-public-access.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - eks-cluster-endpoints-restrict-public-access.sentinel

      Description:
        This policy checks if 'aws_eks_cluster' resources have
        their unrestricted public endpoint access

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy eks-cluster-endpoints-restrict-public-access.

      ✓ Found 0 resource violations

      eks-cluster-endpoints-restrict-public-access.sentinel:50:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - eks-cluster-endpoints-restrict-public-access.sentinel

      Description:
        This policy checks if 'aws_eks_cluster' resources have
        their unrestricted public endpoint access

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy eks-cluster-endpoints-restrict-public-access.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_eks_cluster.this
          | ✗ failed
          | Attribute 'endpoint_public_access' must be false for aws_eks_cluster resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/eks-controls.html#eks-1 for more details.


      eks-cluster-endpoints-restrict-public-access.sentinel:43:1 - Rule "main"
        Value:
          false
```

---