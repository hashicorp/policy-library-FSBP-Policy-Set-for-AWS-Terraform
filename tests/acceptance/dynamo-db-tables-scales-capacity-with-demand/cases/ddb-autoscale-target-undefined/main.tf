provider "aws" {
  region = "us-west-2"
}

resource "aws_dynamodb_table" "my_table" {
  name             = "example"
  hash_key         = "TestTableHashKey"
  billing_mode     = "PROVISIONED"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"
  read_capacity    = 1
  write_capacity   = 1
  point_in_time_recovery {
    enabled = true
  }
  attribute {
    name = "TestTableHashKey"
    type = "S"
  }

  replica {
    region_name = "us-east-2"
  }

  replica {
    region_name = "us-west-2"
  }
}

