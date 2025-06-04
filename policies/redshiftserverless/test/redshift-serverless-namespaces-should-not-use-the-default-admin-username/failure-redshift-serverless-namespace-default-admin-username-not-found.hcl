mock "tfconfig/v2" {
	module {
		source = "./mocks/policy-failure-redshift-serverless-namespace-default-admin-username-not-found/mock-tfconfig-v2.sentinel"
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