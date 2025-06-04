# AWS Amazon Redshift Serverless workgroups should use enhanced VPC routing

| Provider            | Category                     |
| ------------------- | ---------------------------- |
| Amazon Web Services | Secure network configuration |

## Description

This control checks whether enhanced VPC routing is enabled for an Amazon Redshift Serverless workgroup. The control fails if enhanced VPC routing is disabled for the workgroup.

If enhanced VPC routing is disabled for an Amazon Redshift Serverless workgroup, Amazon Redshift routes traffic through the internet, including traffic to other services within the AWS network. If you enable enhanced VPC routing for a workgroup, Amazon Redshift forces all COPY and UNLOAD traffic between your cluster and your data repositories through your virtual private cloud (VPC) based on the Amazon VPC service. With enhanced VPC routing, you can use standard VPC features to control the flow of data between your Amazon Redshift cluster and other resources. This includes features such as VPC security groups and endpoint policies, network access control lists (ACLs), and Domain Name System (DNS) servers. You can also use VPC flow logs to monitor COPY and UNLOAD traffic.

This rule is covered by the [redshift-serverless-workgroups-should-use-enhanced-vpc-routing](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/redshiftserveless/redshift-serverless-workgroups-should-use-enhanced-vpc-routing.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - redshift-serverless-workgroups-should-use-enhanced-vpc-routing.sentinel

        Description:
            This control checks whether enhanced VPC routing is enabled for an Amazon
            Redshift Serverless workgroup

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy redshift-serverless-enhanced-vpc-routing-enabled.

        ✓ Found 0 resource violations

        redshift-serverless-workgroups-should-use-enhanced-vpc-routing.sentinel:44:1 - Rule "main"
            Value:
                true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - redshift-serverless-workgroups-should-use-enhanced-vpc-routing.sentinel

        Description:
            This control checks whether enhanced VPC routing is enabled for an Amazon
            Redshift Serverless workgroup

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-serverless-enhanced-vpc-routing-enabled.

        Found 1 resource violations

        → Module name: root
            ↳ Resource Address: aws_redshiftserverless_workgroup.compliant_workgroup
                | ✗ failed
                | Attribute 'enhanced_vpc_routing' must be set to true for 'aws_redshiftserverless_workgroup' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshiftserverless-controls.html#redshiftserverless-1 for more details.


        redshift-serverless-workgroups-should-use-enhanced-vpc-routing.sentinel:44:1 - Rule "main"
            Value:
                false
```

---
