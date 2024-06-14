# EKS clusters should have audit logging enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Compute      |

## Description

This policy checks whether an Amazon EKS cluster has audit logging enabled. The policy fails if audit logging isn't enabled for the cluster.

EKS control plane logging provides audit and diagnostic logs directly from the EKS control plane to Amazon CloudWatch Logs in your account. You can select the log types you need, and logs are sent as log streams to a group for each EKS cluster in CloudWatch. Logging provides visibility into the access and performance of EKS clusters. By sending EKS control plane logs for your EKS clusters to CloudWatch Logs, you can record operations for audit and diagnostic purposes in a central location.

This rule is covered by the [eks-cluster-audit-logging-enabled](../../policies/eks-cluster-audit-logging-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - eks-cluster-audit-logging-enabled.sentinel

      Description:
        This policy checks if 'aws_eks_cluster' resources have
        their unrestricted public endpoint access

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy eks-cluster-endpoints-restrict-public-access.

      ✓ Found 0 resource violations

      eks-cluster-audit-logging-enabled.sentinel:45:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - eks-cluster-audit-logging-enabled.sentinel

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
          | Audit logging must be enabled for aws_eks_cluster resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/eks-controls.html#eks-8 for more details.


      eks-cluster-audit-logging-enabled.sentinel:45:1 - Rule "main"
        Value:
          false
```

---