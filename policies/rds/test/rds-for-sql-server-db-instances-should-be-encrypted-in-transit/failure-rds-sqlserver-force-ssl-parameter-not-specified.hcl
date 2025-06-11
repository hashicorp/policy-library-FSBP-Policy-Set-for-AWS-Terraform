mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-rds-sqlserver-force-ssl-parameter-not-specified/mock-tfplan-v2.sentinel"
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