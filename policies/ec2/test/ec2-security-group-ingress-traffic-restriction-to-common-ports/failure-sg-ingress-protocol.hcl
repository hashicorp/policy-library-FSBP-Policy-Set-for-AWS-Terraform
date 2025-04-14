mock "tfplan/v2" {
  module {
    source = "./mocks/policy-failure-sg-ingress-protocol/mock-tfplan-v2.sentinel"
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

param "ensure_no_ingress_to_port_22_from_unknown_sources" {
  value = true
}

test {
  rules = {
    main = false
  }
}
