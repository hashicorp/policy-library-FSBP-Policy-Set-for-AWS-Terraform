# AWS Event Subscriptions should have Event Notifications configured for the AWS RDS Cluster resource

| Provider            |        Category         |
| ------------------- |        --------         |
| Amazon Web Services |  Application Monitoring |

## Description

This control checks whether an existing Amazon RDS event subscription for database clusters has notifications enabled for the following source type and event category key-value pairs:

DBCluster: ["maintenance","failure"]

The control passes if there are no existing event subscriptions in your account.

RDS event notifications uses Amazon SNS to make you aware of changes in the availability or configuration of your RDS resources. These notifications allow for rapid response. For additional information about RDS event notifications, see Using Amazon RDS event notification in the Amazon RDS User Guide.

This rule is covered by the [rds-event-notifications-configured-for-critical-events](../../policies/rds/rds-event-notifications-configured-for-critical-events.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - rds-cluster-event-notifications-configured-for-critical-events.sentinel

      Description:
        This policy checks if resources of type 'aws_event_subscription' have the
        event notifications
        configured

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy rds-event-notifications-configured-for-critical-events.

      ✓ Found 0 resource violations

      rds-cluster-event-notifications-configured-for-critical-events.sentinel:110:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - rds-cluster-event-notifications-configured-for-critical-events.sentinel

      Description:
        This policy checks if resources of type 'aws_event_subscription' have the
        event notifications
        configured

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-event-notifications-configured-for-critical-events.

      Found 1 resource violations

      → Module name: module.rds-clusters
        ↳ Resource Address: module.rds-clusters.aws_rds_cluster.default
          | ✗ failed
          | Event Notifications should be configured for the resource critical events, Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-19 for more details.


      rds-cluster-event-notifications-configured-for-critical-events.sentinel:110:1 - Rule "main"
        Value:
          false
```

---
