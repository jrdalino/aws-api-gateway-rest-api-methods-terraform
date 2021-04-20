# APIGW Resource: /users
output "aws_api_gateway_resource_create_index_id" {
  value       = aws_api_gateway_resource.create_index.id
  description = "The resource's identifier."
}

output "aws_api_gateway_resource_create_index_path" {
  value       = aws_api_gateway_resource.create_index.path
  description = "The complete path for this API resource, including all parent paths."
}

# APIGW Method: Create > No additional atrributes are exported
# APIGW Lambda Function Integration: Create > No additional atrributes are exported

# APIGW Method: Index > No additional atrributes are exported
# APIGW Lambda Function Integration: Index > No additional atrributes are exported

# APIGW Resource: /users/{id}
output "aws_api_gateway_resource_read_update_delete_id" {
  value       = aws_api_gateway_resource.read_update_delete.id
  description = "The resource's identifier."
}

output "aws_api_gateway_resource_read_update_delete_path" {
  value       = aws_api_gateway_resource.read_update_delete.path
  description = "The complete path for this API resource, including all parent paths."
}

# APIGW Method: Read > No additional atrributes are exported
# APIGW Lambda Function Integration: Read > No additional atrributes are exported

# APIGW Method: Update > No additional atrributes are exported
# APIGW Lambda Function Integration: Update > No additional atrributes are exported

# APIGW Method: Delete > No additional atrributes are exported
# APIGW Lambda Function Integration: Delete > No additional atrributes are exported

# APIGW Deployment
output "aws_api_gateway_deployment_id" {
  value       = aws_api_gateway_deployment.this.id
  description = "The ID of the deployment"
}

output "aws_api_gateway_deployment_invoke_url" {
  value       = aws_api_gateway_deployment.this.invoke_url
  description = "The URL to invoke the API pointing to the stage, e.g. https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/prod"
}

output "aws_api_gateway_deployment_execution_arn" {
  value       = aws_api_gateway_deployment.this.execution_arn
  description = "The execution ARN to be used in lambda_permission's source_arn when allowing API Gateway to invoke a Lambda function, e.g. arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j/prod"
}

output "aws_api_gateway_deployment_created_date" {
  value       = aws_api_gateway_deployment.this.created_date
  description = "The creation date of the deployment"
}