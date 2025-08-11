# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

mock "tfconfig/v2" {
	module {
		source = "./mocks/policy-success-s3-bucket-access-control-policy-complaint/mock-tfconfig-v2.sentinel"
	}
}



mock "tfstate/v2" {
	module {
		source = "./mocks/policy-success-s3-bucket-access-control-policy-complaint/mock-tfstate-v2.sentinel"
	}
}

mock "tfresources" {
  module {
    source = "../../../../modules/tfresources/tfresources.sentinel"
  }
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