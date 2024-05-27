package acceptance

import (
	"context"
	"os"
	"testing"

	sdk "github.com/hashicorp/sentinel-terraform-test-framework"
	"github.com/hashicorp/sentinel-terraform-test-framework/pkg/types"
	github "github.com/hashicorp/sentinel-terraform-test-framework/pkg/types/vcs/github"
	"github.com/stretchr/testify/require"
)

const (
	testGitHubOrg  = "hashicorp"
	testRepository = "policy-library-aws-cis-v3.0.0-terraform"

	awsAccessKeyIDEnvVar     = "AWS_ACCESS_KEY_ID"
	awsSecretAccessKeyEnvVar = "AWS_SECRET_ACCESS_KEY"

	tfHostName = "TF_CLOUD_HOSTNAME"

	githubBranchEnvVar = "ACCEPTANCE_TEST_BRANCH"
)

func TestPolicies(t *testing.T) {
	gitHubVCSOpts := &github.GitHubVCSRepoOpts{
		Organization: testGitHubOrg,
		Repository:   testRepository,
		Branch:       os.Getenv(githubBranchEnvVar),
	}

	vcsGH, err := github.New(gitHubVCSOpts)
	require.NoError(t, err)

	pwd, err := os.Getwd()
	require.NoError(t, err)

	require.NotEmpty(t, os.Getenv(awsAccessKeyIDEnvVar))
	require.NotEmpty(t, os.Getenv(awsSecretAccessKeyEnvVar))

	require.NotEmpty(t, os.Getenv(tfHostName))

	suite, err := sdk.NewPolicyTestSuite(&types.PolicyTestSuiteInput{
		OrgVariables: []*types.Variable{
			types.NewEnvironmentVariable(awsAccessKeyIDEnvVar, os.Getenv(awsAccessKeyIDEnvVar), true),
			types.NewEnvironmentVariable(awsSecretAccessKeyEnvVar, os.Getenv(awsSecretAccessKeyEnvVar), true),
		},
		VCSRepo:             vcsGH,
		TestCasesFolderPath: pwd,
	})
	require.NoError(t, err)

	suite.TestPolicies(context.Background(), t)
}
