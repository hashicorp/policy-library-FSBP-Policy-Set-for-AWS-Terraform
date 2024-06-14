provider "aws" {
  region = "us-west-2"
}

module "dynamo_db" {
  source = "./dynamo-db"
}

module "autoscale_target" {
  source     = "./auotscale-target"
  table_name = module.dynamo_db.name
}

module "autoscale_policy" {
  source                          = "./autoscale-policy"
  read_target_resource_id         = module.autoscale_target.autoscale_write_target_resource_id
  read_target_scalable_dimension  = module.autoscale_target.autoscale_write_target_scalable_dimension
  read_target_service_namespace   = module.autoscale_target.autoscale_write_target_service_namespace
  write_target_resource_id        = module.autoscale_target.autoscale_write_target_resource_id
  write_target_scalable_dimension = module.autoscale_target.autoscale_write_target_scalable_dimension
  write_target_service_namespace  = module.autoscale_target.autoscale_write_target_service_namespace
}
