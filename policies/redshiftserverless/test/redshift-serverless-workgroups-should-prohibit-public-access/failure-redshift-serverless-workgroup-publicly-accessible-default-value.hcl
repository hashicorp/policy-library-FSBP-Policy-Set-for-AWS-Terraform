mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-redshift-serverless-workgroup-publicly-accessible-default-value/mock-tfplan-v2.sentinel"
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