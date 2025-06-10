mock "tfconfig/v2" {
	module {
		source = "./mocks/policy-success-s3-multi-region-access-point-block-public-access-enabled/mock-tfconfig-v2.sentinel"
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