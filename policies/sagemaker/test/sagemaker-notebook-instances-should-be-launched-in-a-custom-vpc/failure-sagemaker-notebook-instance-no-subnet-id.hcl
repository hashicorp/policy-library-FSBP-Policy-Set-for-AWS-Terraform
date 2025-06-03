mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-sagemaker-notebook-instance-no-subnet-id/mock-tfplan-v2.sentinel"
	}
}

mock "tfconfig/v2" {
	module {
		source = "./mocks/policy-failure-sagemaker-notebook-instance-no-subnet-id/mock-tfconfig-v2.sentinel"
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