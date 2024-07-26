mock "tfplan/v2" {
  module {
    source = "./mocks/policy-success-bucket-level-s3-block-public-access-settings-nested-modules/mock-tfplan-v2.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-success-bucket-level-s3-block-public-access-settings-nested-modules/mock-tfconfig-v2.sentinel"
  }
}

mock "tfconfig-functions" {
  module {
    source = "../../../modules/tfconfig-functions/tfconfig-functions.sentinel"
  }
}

mock "tfplan-functions" {
  module {
    source = "../../../modules/tfplan-functions/tfplan-functions.sentinel"
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