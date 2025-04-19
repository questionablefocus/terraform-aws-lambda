output "function_name" {
  description = "Name of the Lambda function"
  value       = aws_lambda_function.main.function_name
}

output "function_arn" {
  description = "ARN of the Lambda function"
  value       = aws_lambda_function.main.arn
}

output "invoke_arn" {
  description = "Invocation ARN of the Lambda function"
  value       = aws_lambda_function.main.invoke_arn
}

output "role_arn" {
  description = "ARN of the Lambda execution role"
  value       = aws_iam_role.lambda_execution_role.arn
}
