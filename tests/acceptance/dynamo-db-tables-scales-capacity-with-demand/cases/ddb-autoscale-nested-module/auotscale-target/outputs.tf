output "autoscale_read_target_resource_id" {
  value = aws_appautoscaling_target.dynamodb_table_read_target.resource_id
}

output "autoscale_write_target_resource_id" {
  value = aws_appautoscaling_target.dynamodb_table_write_target.resource_id
}

output "autoscale_read_target_scalable_dimension" {
  value = aws_appautoscaling_target.dynamodb_table_read_target.scalable_dimension
}

output "autoscale_read_target_service_namespace" {
  value = aws_appautoscaling_target.dynamodb_table_read_target.service_namespace
}

output "autoscale_write_target_scalable_dimension" {
  value = aws_appautoscaling_target.dynamodb_table_write_target.scalable_dimension
}

output "autoscale_write_target_service_namespace" {
  value = aws_appautoscaling_target.dynamodb_table_write_target.service_namespace
}