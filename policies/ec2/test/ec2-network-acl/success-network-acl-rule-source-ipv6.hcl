mock "tfplan/v2" {
  module {
    source = "./mocks/success-network-acl-rule-source-ipv6/mock-tfplan-v2.sentinel"
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
  value = [22]
}

test {
  rules = {
    main = true
  }
}