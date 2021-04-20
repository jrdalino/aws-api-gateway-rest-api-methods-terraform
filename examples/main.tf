module "apigatewaymethods" {
  source = "git::https://github.com/jrdalino/aws-api-gateway-rest-api-methods-terraform.git?ref=main"
  # General
  aws_region  = var.aws_region
  aws_account = var.aws_account
  aws_role    = var.aws_role

  # Tagging
  namespace       = var.namespace
  bounded_context = var.bounded_context
  environment     = var.environment

  # APIGW Resource: /users
  rest_api_id = var.aws_api_gateway_rest_api_id
  parent_id   = var.aws_api_gateway_rest_api_root_resource_id
  # path_part   = var.aws_api_gateway_resource_path_part_create_index # we need to fix this

  # APIGW Method: Create
  # APIGW Lambda Function Integration: Create
  # uri = var.aws_lambda_function_create_invoke_arn # we need to fix this

  # APIGW Method: Index
  # APIGW Lambda Function Integration: Index
  # uri = var.aws_lambda_function_index_invoke_arn # we need to fix this

  # APIGW Resource: /users/{id}
  # path_part = var.aws_api_gateway_resource_path_part_read_update_delete # we need to fix this

  # APIGW Method: Read
  # APIGW Lambda Function Integration: Read
  # uri = var.aws_lambda_function_read_invoke_arn # we need to fix this

  # APIGW Method: Update
  # APIGW Lambda Function Integration: Update
  # uri = var.aws_lambda_function_update_invoke_arn # we need to fix this
 
  # APIGW Method: DELETE
  # APIGW Lambda Function Integration: DELETE
  # uri = var.aws_lambda_function_delete_invoke_arn # we need to fix this

  # APIGW Deployment
}