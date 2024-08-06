# AWS DB RDS instances should be deployed in a VPC

| Provider            | Category |
|---------------------|----------|
| Amazon Web Services | Identity |

## Description

This control checks whether an Amazon RDS instance is deployed on an EC2-VPC.

VPCs provide a number of network controls to secure access to RDS resources. 
These controls include VPC Endpoints, network ACLs, and security groups. 
To take advantage of these controls, we recommend that you create your RDS instances on an EC2-VPC.

This rule is covered by the [rds-instance-deployed-in-vpc](../../policies/rds-instance-deployed-in-vpc.sentinel) policy.

## Policy Results (Pass)
```bash
    Pass - rds-instance-deployed-in-vpc.sentinel

    Description:
      This policy checks if the aws rds instances are publicly accessible

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-instance-deployed-in-vpc.

    ✓ Found 0 resource violations

    rds-instance-deployed-in-vpc.sentinel:50:1 - Rule "main"
      Value:
        true  
```

---

## Policy Results (Fail)
```bash
    Fail - rds-instance-deployed-in-vpc.sentinel

    Description:
      This policy checks if the aws rds instances are publicly accessible

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-instance-deployed-in-vpc.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_db_instance.default
         | ✗ failed
         | Attribute 'db_subnet_group_name' should be present for aws_db_instance resource. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-18 for more details.

    rds-instance-deployed-in-vpc.sentinel:50:1 - Rule "main"
      Value:
        false
     
```

---