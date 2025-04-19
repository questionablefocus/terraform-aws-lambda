# terraform-aws-lambda

A pragmatic Terraform module to provide 'just enough' configuration for configuring AWS Lambdas, along with (opinionated) sensible defaults.

It requires

- An AWS VPC
- An AWS ECR repository

Currently, only container images are supported (for maximum code portability).

## Examples

### Basic configuration

```hcl
module "skeleton" {
  source = "app.terraform.io/questionable-focus/lambda/aws"
  version = "1.0.0"

  name               = "skeleton"
  image_uri          = "${aws_ecr_repository.main.repository_url}:latest"
  subnet_ids         = [aws_subnet.application.id]
  security_group_ids = [aws_security_group.application.id]
  command            = ["main.handler"]
}
```
