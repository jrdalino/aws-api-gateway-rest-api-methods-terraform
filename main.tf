# APIGW Resource: /users
resource "aws_api_gateway_resource" "create_index" {
  rest_api_id = var.aws_api_gateway_rest_api_id
  parent_id   = var.aws_api_gateway_rest_api_root_resource_id
  path_part   = var.aws_api_gateway_resource_path_part_create_index
}

# APIGW Method: Create
resource "aws_api_gateway_method" "create" {
  rest_api_id   = var.aws_api_gateway_rest_api_id
  resource_id   = aws_api_gateway_resource.create_index.id
  http_method   = "POST"
  authorization = "NONE"
  # authorizer_id
  # authorization_scopes
  # api_key_required
  # operation_name
  # request_models
  # request_validator_id
  # request_parameters
}

# APIGW Lambda Function Integration: Create
resource "aws_api_gateway_integration" "create" {
  rest_api_id = var.aws_api_gateway_rest_api_id
  resource_id = aws_api_gateway_method.create.resource_id
  http_method = aws_api_gateway_method.create.http_method

  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  # connection_type
  # connection_id
  uri = var.aws_lambda_function_create_invoke_arn
  # credentials
  # request_templates
  # request_parameters
  # passthrough_behavior
  # cache_key_parameters
  # cache_namespace
  # content_handling
  # timeout_milliseconds
  # tls_config
}

# APIGW Method: Index
resource "aws_api_gateway_method" "index" {
  rest_api_id   = var.aws_api_gateway_rest_api_id
  resource_id   = aws_api_gateway_resource.create_index.id
  http_method   = "GET"
  authorization = "NONE"
  # authorizer_id
  # authorization_scopes
  # api_key_required
  # operation_name  
  # request_models
  # request_validator_id
  # request_parameters
}

# APIGW Lambda Function Integration: Index
resource "aws_api_gateway_integration" "index" {
  rest_api_id = var.aws_api_gateway_rest_api_id
  resource_id = aws_api_gateway_method.index.resource_id
  http_method = aws_api_gateway_method.index.http_method

  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  # connection_type
  # connection_id
  uri = var.aws_lambda_function_index_invoke_arn
  # credentials
  # request_templates
  # request_parameters
  # passthrough_behavior
  # cache_key_parameters
  # cache_namespace
  # content_handling
  # timeout_milliseconds
  # tls_config  
}

# APIGW Resource: /users/{id}
resource "aws_api_gateway_resource" "read_update_delete" {
  rest_api_id = var.aws_api_gateway_rest_api_id
  parent_id   = aws_api_gateway_resource.create_index.id
  path_part   = var.aws_api_gateway_resource_path_part_read_update_delete
}

# APIGW Method: Read
resource "aws_api_gateway_method" "read" {
  rest_api_id   = var.aws_api_gateway_rest_api_id
  resource_id   = aws_api_gateway_resource.read_update_delete.id
  http_method   = "GET"
  authorization = "NONE"
  # authorizer_id
  # authorization_scopes
  # api_key_required
  # operation_name  
  # request_models
  # request_validator_id
  # request_parameters
}

# APIGW Lambda Function Integration: Read
resource "aws_api_gateway_integration" "read" {
  rest_api_id = var.aws_api_gateway_rest_api_id
  resource_id = aws_api_gateway_method.read.resource_id
  http_method = aws_api_gateway_method.read.http_method

  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  # connection_type
  # connection_id
  uri = var.aws_lambda_function_read_invoke_arn
  # credentials
  # request_templates
  # request_parameters
  # passthrough_behavior
  # cache_key_parameters
  # cache_namespace
  # content_handling
  # timeout_milliseconds
  # tls_config  
}

# APIGW Method: Update
resource "aws_api_gateway_method" "update" {
  rest_api_id   = var.aws_api_gateway_rest_api_id
  resource_id   = aws_api_gateway_resource.read_update_delete.id
  http_method   = "PUT"
  authorization = "NONE"
  # authorizer_id
  # authorization_scopes
  # api_key_required
  # operation_name  
  # request_models
  # request_validator_id
  # request_parameters
}

# APIGW Lambda Function Integration: Update
resource "aws_api_gateway_integration" "update" {
  rest_api_id = var.aws_api_gateway_rest_api_id
  resource_id = aws_api_gateway_method.update.resource_id
  http_method = aws_api_gateway_method.update.http_method

  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  # connection_type
  # connection_id
  uri = var.aws_lambda_function_update_invoke_arn
  # credentials
  # request_templates
  # request_parameters
  # passthrough_behavior
  # cache_key_parameters
  # cache_namespace
  # content_handling
  # timeout_milliseconds
  # tls_config  
}

# APIGW Method: DELETE
resource "aws_api_gateway_method" "delete" {
  rest_api_id   = var.aws_api_gateway_rest_api_id
  resource_id   = aws_api_gateway_resource.read_update_delete.id
  http_method   = "DELETE"
  authorization = "NONE"
  # authorizer_id
  # authorization_scopes
  # api_key_required
  # operation_name  
  # request_models
  # request_validator_id
  # request_parameters
}

# APIGW Lambda Function Integration: DELETE
resource "aws_api_gateway_integration" "delete" {
  rest_api_id = var.aws_api_gateway_rest_api_id
  resource_id = aws_api_gateway_method.delete.resource_id
  http_method = aws_api_gateway_method.delete.http_method

  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  # connection_type
  # connection_id
  uri = var.aws_lambda_function_delete_invoke_arn
  # credentials
  # request_templates
  # request_parameters
  # passthrough_behavior
  # cache_key_parameters
  # cache_namespace
  # content_handling
  # timeout_milliseconds
  # tls_config  
}

# APIGW Deployment
resource "aws_api_gateway_deployment" "this" {
  rest_api_id = var.aws_api_gateway_rest_api_id
  # description 
  stage_name  = "prod"
  # stage_description
  # triggers
  # variables

  depends_on = [
    aws_api_gateway_integration.create,
    aws_api_gateway_integration.index,
    aws_api_gateway_integration.read,
    aws_api_gateway_integration.update,
    aws_api_gateway_integration.delete,
  ]  
}