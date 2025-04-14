# EKS clusters should use encrypted Kubernetes secrets

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Compute      |

## Description

This policy checks whether an Amazon EKS cluster uses encrypted Kubernetes secrets. The policy fails if the cluster's Kubernetes secrets aren't encrypted.

When you encrypt secrets, you can use AWS Key Management Service (AWS KMS) keys to provide envelope encryption of Kubernetes secrets stored in etcd for your cluster. This encryption is in addition to the EBS volume encryption that is enabled by default for all data (including secrets) that is stored in etcd as part of an EKS cluster. Using secrets encryption for your EKS cluster allows you to deploy a defense in depth strategy for Kubernetes applications by encrypting Kubernetes secrets with a KMS key that you define and manage.

This rule is covered by the [eks-cluster-encrypted-kubernetes-secrets](../../policies/eks/eks-cluster-encrypted-kubernetes-secrets.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - eks-cluster-encrypted-kubernetes-secrets.sentinel

      Description:
        This policy checks if 'aws_eks_cluster' uses KMS
        service to encrypted Kubernetes secrets

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy eks-cluster-encrypted-kubernetes-secrets.

      ✓ Found 0 resource violations

      eks-cluster-encrypted-kubernetes-secrets.sentinel:63:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - eks-cluster-encrypted-kubernetes-secrets.sentinel

      Description:
        This policy checks if 'aws_eks_cluster' uses KMS
        service to encrypted Kubernetes secrets

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy eks-cluster-encrypted-kubernetes-secrets.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_eks_cluster.this
          | ✗ failed
          | Invalid 'encryption_config' attribute present for 'aws_eks_cluster' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/eks-controls.html#eks-3 for more details.


      eks-cluster-encrypted-kubernetes-secrets.sentinel:68:1 - Rule "main"
        Value:
          false
```

---