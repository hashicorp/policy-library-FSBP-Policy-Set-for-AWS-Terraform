# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

mock "tfconfig/v2" {
	module {
		source = "./mocks/policy-failure-ec2-vpc-with-endpoint-configured-to-s3/mock-tfconfig-v2.sentinel"
	}
}

mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-ec2-vpc-with-endpoint-configured-to-s3/mock-tfplan-v2.sentinel"
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
		main = false
	}
}