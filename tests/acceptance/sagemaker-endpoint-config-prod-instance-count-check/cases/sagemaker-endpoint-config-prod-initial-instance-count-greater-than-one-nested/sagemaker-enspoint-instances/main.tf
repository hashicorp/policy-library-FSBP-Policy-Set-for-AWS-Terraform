resource "aws_sagemaker_endpoint_configuration" "ec" {
  name = "new-endpoint-config"

  production_variants {
    variant_name           = "new-variant"
    model_name             = aws_sagemaker_model.example.name
    initial_instance_count = var.initial_instance_count_variable
    instance_type          = "ml.t2.medium"
  }

  tags = {
    Name = "foo"
  }
}

resource "aws_sagemaker_model" "example" {
  name               = "new-model"
  execution_role_arn = aws_iam_role.example.arn

  primary_container {
    image = data.aws_sagemaker_prebuilt_ecr_image.test.registry_path
  }
}

resource "aws_iam_role" "example" {
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

data "aws_iam_policy_document" "assume_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["sagemaker.amazonaws.com"]
    }
  }
}

data "aws_sagemaker_prebuilt_ecr_image" "test" {
  repository_name = "kmeans"
}
