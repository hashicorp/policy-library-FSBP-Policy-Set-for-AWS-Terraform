resource "aws_appautoscaling_policy" "dynamodb_table_read_policy" {
  name               = "DynamoDBReadCapacityUtilization:${var.read_target_resource_id}"
  policy_type        = "TargetTrackingScaling"
  resource_id        = var.read_target_resource_id
  scalable_dimension = var.read_target_scalable_dimension
  service_namespace  = var.read_target_service_namespace

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "DynamoDBReadCapacityUtilization"
    }

    target_value = 70
  }
}

resource "aws_appautoscaling_policy" "dynamodb_table_write_policy" {
  name               = "DynamoDBWriteCapacityUtilization:${var.write_target_resource_id}"
  policy_type        = "TargetTrackingScaling"
  resource_id        = var.write_target_resource_id
  scalable_dimension = var.write_target_scalable_dimension
  service_namespace  = var.write_target_service_namespace

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "DynamoDBWriteCapacityUtilization"
    }

    target_value = 70
  }
}
