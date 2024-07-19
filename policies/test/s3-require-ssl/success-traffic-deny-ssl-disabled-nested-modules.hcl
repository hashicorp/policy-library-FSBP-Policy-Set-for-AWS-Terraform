mock "tfconfig/v2" {
  module {
    source = "./mocks/success-traffic-deny-ssl-disabled-nested-modules/mock-tfconfig-v2.sentinel"
  }
}

mock "tfstate/v2" {
  module {
    source = "./mocks/success-traffic-deny-ssl-disabled-nested-modules/mock-tfstate-v2.sentinel"
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

test {
  rules = {
    main = true
  }
}