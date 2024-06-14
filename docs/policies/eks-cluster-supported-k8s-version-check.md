# EKS clusters should run on a supported Kubernetes version

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Compute      |

## Description

This policy checks whether an Amazon Elastic Kubernetes Service (Amazon EKS cluster) is running on a supported Kubernetes version. The policy fails if the EKS cluster is running on an unsupported version.

If your application doesn't require a specific version of Kubernetes, we recommend that you use the latest available Kubernetes version that's supported by EKS for your clusters.

This rule is covered by the [eks-cluster-supported-k8s-version-check](../../policies/eks-cluster-supported-k8s-version-check.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - eks-cluster-supported-k8s-version-check.sentinel

      Description:
        This policy checks if 'aws_eks_cluster' does not
        run on unsupported kubernetes versions

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy eks-cluster-supported-k8s-version-check.

      ✓ Found 0 resource violations

      eks-cluster-supported-k8s-version-check.sentinel:59:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - eks-cluster-supported-k8s-version-check.sentinel

      Description:
        This policy checks if 'aws_eks_cluster' does not
        run on unsupported kubernetes versions

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy eks-cluster-supported-k8s-version-check.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_eks_cluster.this
          | ✗ failed
          | aws_eks_cluster resources should be created with supported kubernetes versions. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/eks-controls.html#eks-2 for more details.


      eks-cluster-supported-k8s-version-check.sentinel:59:1 - Rule "main"
        Value:
          false
```

---