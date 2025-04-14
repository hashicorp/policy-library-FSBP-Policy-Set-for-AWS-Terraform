# This policy requires resources of type aws_security_group aws_security_group_rule and aws_vpc_security_group_ingress_rule Redshift Parameter Group set to true to block ingress traffic from unknown sources to resources of type aws_redshift_cluster

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services | Security  |

## Description

This control checks whether a security group associated with an Amazon Redshift cluster has ingress rules that permit access to the cluster port from the internet (0.0.0.0/0 or ::/0). The control fails if the security group ingress rules permit access to the cluster port from the internet.

Permitting unrestricted inbound access to the Redshift cluster port (IP address with a /0 suffix) can result in unauthorized access or security incidents. We recommend applying the principal of least privilege access when creating security groups and configuring inbound rules.

This rule is covered by the [redshift-cluster-unrestricted-port-access-check](../../policies/redshift/redshift-cluster-unrestricted-port-access-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - redshift-cluster-unrestricted-port-access-check.sentinel

      Description:
        This policy requires resources of type `aws_security_group`,
        `aws_security_group_rule` and `aws_vpc_security_group_ingress_rule`
        to block ingress traffic from unknown sources to resources of type
        aws_redshift_cluster

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy redshift-cluster-unrestricted-port-access-check.

      ✓ Found 0 resource violations

      redshift-cluster-unrestricted-port-access-check.sentinel:109:1 - Rule "main"
        Value:
          true

      redshift-cluster-unrestricted-port-access-check.sentinel:99:1 - Rule "is_aws_security_group_compliant"
        Description:
          Checks if 'aws_security_group' resources block ingress traffic
          from unknown sources to redshift cluster ports

        Value:
          true

      redshift-cluster-unrestricted-port-access-check.sentinel:93:1 - Rule "is_aws_security_group_rule_compliant"
        Description:
          Checks if 'aws_security_group_rule' resources block ingress
          traffic
          from unknown sources to redshift cluster ports

        Value:
          true

      redshift-cluster-unrestricted-port-access-check.sentinel:105:1 - Rule "is_aws_vpc_security_group_ingress_rule_compliant"
        Description:
          Checks if 'aws_vpc_security_group_ingress_rule' resources block
          ingress traffic
          from unknown sources to redshift cluster ports

        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - redshift-cluster-unrestricted-port-access-check.sentinel

      Description:
        This policy requires resources of type `aws_security_group`,
        `aws_security_group_rule` and `aws_vpc_security_group_ingress_rule`
        to block ingress traffic from unknown sources to resources of type
        aws_redshift_cluster

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-cluster-unrestricted-port-access-check.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_vpc_security_group_ingress_rule.new_ingress_rule
          | ✗ failed
          | Security group rules should not allow ingress to Redshift Cluster port from '0.0.0.0/0' or '::/0'. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshift-controls.html#redshift-15 for more details.


      redshift-cluster-unrestricted-port-access-check.sentinel:109:1 - Rule "main"
        Value:
          false

      redshift-cluster-unrestricted-port-access-check.sentinel:99:1 - Rule "is_aws_security_group_compliant"
        Description:
          Checks if 'aws_security_group' resources block ingress traffic
          from unknown sources to redshift cluster ports

        Value:
          true

      redshift-cluster-unrestricted-port-access-check.sentinel:93:1 - Rule "is_aws_security_group_rule_compliant"
        Description:
          Checks if 'aws_security_group_rule' resources block ingress
          traffic
          from unknown sources to redshift cluster ports

        Value:
          true

      redshift-cluster-unrestricted-port-access-check.sentinel:105:1 - Rule "is_aws_vpc_security_group_ingress_rule_compliant"
        Description:
          Checks if 'aws_vpc_security_group_ingress_rule' resources block
          ingress traffic
          from unknown sources to redshift cluster ports

        Value:
          false
```

---
