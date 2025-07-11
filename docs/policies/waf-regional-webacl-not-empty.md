# AWS WAF Classic Regional web ACLs should have at least one rule or rule group

| Provider            | Category                     |
|---------------------|------------------------------|
| Amazon Web Services | Secure network configuration |

## Description

This control checks whether an AWS WAF Classic Regional web ACL contains any WAF rules or WAF rule groups. This control fails if a web ACL does not contain any WAF rules or rule groups.

A WAF Regional web ACL can contain a collection of rules and rule groups that inspect and control web requests. If a web ACL is empty, the web traffic can pass without being detected or acted upon by WAF depending on the default action.

This rule is covered by the [waf-regional-webacl-not-empty](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/waf/waf-regional-webacl-not-empty.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - waf-regional-webacl-not-empty.sentinel

      Description:
        This policy requires resources of type `aws_wafregional_web_acl` to have at
        least one rule or rule group.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy waf-regional-webacl-not-empty.

      ✓ Found 0 resource violations

      waf-regional-webacl-not-empty.sentinel:44:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - waf-regional-webacl-not-empty.sentinel

      Description:
        This policy requires resources of type `aws_wafregional_web_acl` to have at
        least one rule or rule group.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy waf-regional-webacl-not-empty.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_wafregional_web_acl.wafacl
          | ✗ failed
          | AWS WAF Classic Regional web ACLs should have at least one rule or rule group. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/waf-controls.html#waf-4 for more details.


      waf-regional-webacl-not-empty.sentinel:44:1 - Rule "main"
        Value:
          false
```

---