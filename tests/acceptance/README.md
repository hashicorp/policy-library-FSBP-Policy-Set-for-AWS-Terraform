# Acceptance tests for CIS v3.0.0 policies

This directory contains multiple folders(one for each policy) containing test configs needed for the [sentinel-terraform-test-framework](https://github.com/hashicorp/sentinel-terraform-test-framework) to effectively run acceptance tests for various policies.

## Enable Go to retrieve and resolve private Go packages on your local machine

The [sentinel-terraform-test-framework](https://github.com/hashicorp/sentinel-terraform-test-framework) repository is private and we want to make some changes to the way Go resolves packages on your machine to ensure that the dependant SDK package is resolved properly.

- Add `github.com/hashicorp` to the GOPRIVATE environment variable.
- Mint a Personal Access Token in GitHub with `repo:read` permissions for the `hashicorp` org.
- Open `~/.netrc` file on your machine and add the following changes to it by substituting your GitHub alias and the generated PAT. This will enable Go to resolve private packages via https.
```sh
machine github.com login <GH_USER_NAME> password <PAT_TOKEN>
```
- At this point, just executing `go get github.com/hashicorp/sentinel-terraform-test-framework` will resolve the SDK repo into your GOPATH. 

## Steps to run tests on your local machine

- Set the `TF_CLOUD_ORGANIZATION` environment variable to match the name of the TFC organization where your tests need to run.
```sh
export TF_CLOUD_ORGANIZATION=<tfc_cloud_org>
```
- Setup AWS specific environment variables
```sh
export AWS_ACCESS_KEY_ID=<your_access_key_id>
export AWS_SECRET_ACCESS_KEY=<your_secret_access_key>
```
- Mint an organization scoped API token from the `TF_CLOUD_ORGANIZATION` org and set it to the `TFE_TOKEN` environment variable. Also setup the environment variable for the host.
```sh
export TFE_TOKEN=<org_token>
export TF_CLOUD_HOSTNAME=app.terraform.io
```
- Perform a `terraform login` against the `TF_CLOUD_ORGANIZATION` so that your local terraform credentials have enough privileges to queue a run against the TFC workspace.
- Execute tests with the following command.
```sh
go test -v -timeout 1h -run TestPolicies
```
- The SDK tests the E2E for atmost 5 policies in parallel. Once completed the SDK outputs a report that details the status of policy evaluation for each policy and the failures associated with them. It is important to note that the SDK doesn't fail fast and instead returns back the report after testing all the policies. This is not true for cases within a policy. Cases for a policy are executed sequentially and they fail-fast. For example, if a policy has 5 cases and the first case fails the remaining 4 cases are skipped and the policy's evaluation result is set to false.

## Steps to create a new test config for a policy

Let's assume that we are authoring tests for a given policy `policy-verify-foo`. Following steps describe how to create a test config so that it can be used by the acceptance test framework to validate policy logic.

- Create a new folder named `policy-verify-foo/` inside the `tests/acceptance` folder.
- Create a file named `test-config.hcl` that contains the configuration to run tests for a given policy. Following is the structure of the file
```hcl
name = "policy-verify-foo"

case "Name of Case 1 goes here" {
    path = "<PATH_TO_THE_CASE>"

    expectation = {
        result = true // Expected policy result - true or false
    }
}

case "Name of Case 2 goes here" {
    path = "<PATH_TO_THE_CASE>"

    expectation = {
        result = false
    }
}
```
- Create a folder named `cases/` and add multiple folders under it for each case you wish to test. A case corresponds to a single Terraform configuration that will be `planned` against the remote TFC workspace. Each case should contain a `terraform` block with `cloud` as the specified backend. The `organization` and `host_name` attributes can be ignored since they were already set as part of the environment variables. The name of the workspace should match the `name` attribute given in the `test-config.hcl` file for a given policy. If not the SDK will throw validation errors before starting the tests.
```hcl
terraform {
  cloud {
    workspaces {
      name = "policy-verify-foo"
    }
  }
}
```
- Once all these steps are completed, the policy config gets automatically picked up whenever you run `go test -run TestPolicies`