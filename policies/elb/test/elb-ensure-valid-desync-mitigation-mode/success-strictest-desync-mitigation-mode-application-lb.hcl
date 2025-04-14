mock "tfplan/v2" {
  module {
    source = "./mocks/policy-success-strictest-desync-mitigation-mode-application-lb/mock-tfplan-v2.sentinel"
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

param "lb_type" {
  value = "application"
}

test {
  rules = {
    main = true
  }
}