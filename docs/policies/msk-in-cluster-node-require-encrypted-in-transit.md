# AWS MQ Broker should have the in_cluster attribute set to true for encryption_in_transit of encryption_info attribute

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This controls checks whether an Amazon MSK cluster is encrypted in transit with HTTPS (TLS) among the broker nodes of the cluster. The control fails if plain text communication is enabled for a cluster broker node connection.

HTTPS offers an extra layer of security as it uses TLS to move data and can be used to help prevent potential attackers from using person-in-the-middle or similar attacks to eavesdrop on or manipulate network traffic. By default, Amazon MSK encrypts data in transit with TLS. However, you can override this default at the time that you create the cluster. We recommend using encrypted connections over HTTPS (TLS) for-broker node connections.

This rule is covered by the [msk-in-cluster-node-require-encrypted-in-transit](../../policies/msk/msk-in-cluster-node-require-encrypted-in-transit.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - msk-in-cluster-node-require-encrypted-in-transit.sentinel

      Description:
        This policy checks if resources of type 'aws_msk_cluster' have the
        'in_cluster'
        attribute set to true in encryption_in_transit of encryption_info attribute

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy msk-in-cluster-node-require-encrypted-in-transit.

      ✓ Found 0 resource violations

      msk-in-cluster-node-require-encrypted-in-transit.sentinel:54:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - msk-in-cluster-node-require-encrypted-in-transit.sentinel

      Description:
        This policy checks if resources of type 'aws_msk_cluster' have the
        'in_cluster'
        attribute set to true in encryption_in_transit of encryption_info attribute

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy msk-in-cluster-node-require-encrypted-in-transit.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_msk_cluster.example
          | ✗ failed
          | Attribute 'in_cluster' should be true in encryption_in_transit of encryption_info attribute for AWS MSK Cluster. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/msk-controls.html#msk-1 for more details.


      msk-in-cluster-node-require-encrypted-in-transit.sentinel:54:1 - Rule "main"
        Value:
          false
```

---
