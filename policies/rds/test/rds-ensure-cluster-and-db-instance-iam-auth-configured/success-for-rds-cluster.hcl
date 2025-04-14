mock "tfplan/v2" {
  module {
    source = "./mocks/success-for-rds-cluster/mock-tfplan-v2.sentinel"
  }
}

import "plugin" "tfresources" {
  source = "../../../../plugins/darwin/arm64/sentinel-plugin-tfresources"
}

mock "report" {
  module {
    source = "../../../../modules/mocks/report/report.sentinel"
  }
}

param "resource_type" {
  value = "aws_rds_cluster"
}

test {
  rules = {
    main = true
  }
}