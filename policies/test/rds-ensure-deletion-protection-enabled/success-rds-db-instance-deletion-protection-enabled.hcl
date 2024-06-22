mock "tfplan/v2" {
  module {
    source = "./mocks/success-rds-cluster-deletion-protection-enabled/mock-tfplan-v2.sentinel"
  }
}

import "plugin" "tfresources" {
  source = "../../../plugins/darwin/arm64/sentinel-plugin-tfresources"
}

mock "report" {
  module {
    source = "../../../modules/mocks/report/report.sentinel"
  }
}

param "resource_type" {
  value = "aws_db_instance"
}

test {
  rules = {
    main = true
  }
}