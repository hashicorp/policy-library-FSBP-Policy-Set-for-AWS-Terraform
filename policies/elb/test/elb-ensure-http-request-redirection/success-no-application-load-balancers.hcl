mock "tfplan/v2" {
  module {
    source = "./mocks/policy-success-no-application-load-balancers/mock-tfplan-v2.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-success-no-application-load-balancers/mock-tfconfig-v2.sentinel"
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

test {
  rules = {
    main = true
  }
}