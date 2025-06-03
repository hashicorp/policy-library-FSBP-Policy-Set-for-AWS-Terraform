mock "tfplan/v2" {
	module {
		source = "./mocks/policy-success-sagemaker-notebook-instance-custom-vpc-subnet-configured/mock-tfplan-v2.sentinel"
	}
}

mock "tfconfig/v2" {
	module {
		source = "./mocks/policy-success-sagemaker-notebook-instance-custom-vpc-subnet-configured/mock-tfconfig-v2.sentinel"
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