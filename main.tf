resource "aws_lambda_function" "main" {
  function_name = var.name
  package_type  = "Image"
  image_uri     = var.image_uri
  memory_size   = var.memory_size
  timeout       = var.timeout
  publish       = true
  role          = aws_iam_role.lambda_execution_role.arn

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }

  environment {
    variables = var.environment_variables
  }

  image_config {
    command = var.command
  }

  depends_on = [aws_iam_role.lambda_execution_role]
}

