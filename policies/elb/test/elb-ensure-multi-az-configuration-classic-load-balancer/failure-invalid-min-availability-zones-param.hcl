mock "tfplan/v2" {
  module {
    source = "./mocks/policy-failure-invalid-min-availability-zones-param/mock-tfplan-v2.sentinel"
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

param "min_availability_zones" {
  value = 8
}

test {
  rules = {
    main = false
  }
}