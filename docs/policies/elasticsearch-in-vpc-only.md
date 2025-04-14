# AWS Elasticsearch domain should not be publicly accessible

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether Elasticsearch domains are in a VPC. It does not evaluate the VPC subnet routing configuration to determine public access. You should ensure that Elasticsearch domains are not attached to public subnets.

Elasticsearch domains deployed within a VPC can communicate with VPC resources over the private AWS network, without the need to traverse the public internet. This configuration increases the security posture by limiting access to the data in transit. VPCs provide a number of network controls to secure access to Elasticsearch domains, including network ACL and security groups. Security Hub recommends that you migrate public Elasticsearch domains to VPCs to take advantage of these controls.

This rule is covered by the [elasticsearch-in-vpc-only](../../policies/elasticsearch/elasticsearch-in-vpc-only.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - elasticsearch-in-vpc-only.sentinel

    Description:
    This policy requires resources of type `aws_elasticsearch_domain` have the
    `subnet_ids` should not be empty inside 'vpc_options'.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy elasticsearch-in-vpc-only.

    ✓ Found 0 resource violations

    elasticsearch-in-vpc-only.sentinel:59:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - elasticsearch-in-vpc-only.sentinel

    Description:
    This policy requires resources of type `aws_elasticsearch_domain` have the
    `subnet_ids` should not be empty inside 'vpc_options'.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticsearch-in-vpc-only.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_elasticsearch_domain.example
        | ✗ failed
        | Attribute 'subnet_ids' should not be empty for the attribute 'vpc_options' for 'aws_elasticsearch_domain' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/es-controls.html#es-2 for more details.


    elasticsearch-in-vpc-only.sentinel:59:1 - Rule "main"
    Value:
        false
```

---
