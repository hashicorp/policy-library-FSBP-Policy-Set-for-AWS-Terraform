mock "tfplan/v2" {
  module {
    source = "./mocks/failure-network-acl-rule-protocol/mock-tfplan-v2.sentinel"
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

param "blocked_ports" {
  value = [23]
}

test {
  rules = {
    main = false
  }
}