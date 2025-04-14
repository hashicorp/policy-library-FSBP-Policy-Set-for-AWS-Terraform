mock "tfplan/v2" {
  module {
    source = "./mocks/policy-failure-task-definition-with-container-definition-allowing-write-access-for-root-file-systems/mock-tfplan-v2.sentinel"
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
    main = false
  }
}