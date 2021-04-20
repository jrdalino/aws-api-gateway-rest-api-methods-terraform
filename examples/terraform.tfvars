# General
aws_region  = "ap-southeast-1"
aws_account = "623552185285"
aws_role    = "OrganizationAccountAccessRole"

# Tagging
namespace       = "bbsdm"
bounded_context = "user"
environment     = "production"

# APIGW Resource: /users
aws_api_gateway_rest_api_id                     = "0f5ttxbqjl"
aws_api_gateway_rest_api_root_resource_id       = "9apnh5nkhg"
aws_api_gateway_resource_path_part_create_index = "users"

# APIGW Method: Create > None
# APIGW Lambda Function Integration: Create > 
aws_lambda_function_create_invoke_arn = "arn:aws:apigateway:ap-southeast-1:lambda:path/2015-03-31/functions/arn:aws:lambda:ap-southeast-1:623552185285:function:bbsdm-user-create/invocations"

# APIGW Method: Index > None
# APIGW Lambda Function Integration: Index >
aws_lambda_function_index_invoke_arn = "arn:aws:apigateway:ap-southeast-1:lambda:path/2015-03-31/functions/arn:aws:lambda:ap-southeast-1:623552185285:function:bbsdm-user-index/invocations"

# APIGW Resource: /users/{id}
aws_api_gateway_resource_path_part_read_update_delete = "{id}"

# APIGW Method: Read
# APIGW Lambda Function Integration: Read
aws_lambda_function_read_invoke_arn = "arn:aws:apigateway:ap-southeast-1:lambda:path/2015-03-31/functions/arn:aws:lambda:ap-southeast-1:623552185285:function:bbsdm-user-read/invocations"

# APIGW Method: Update
# APIGW Lambda Function Integration: Update
aws_lambda_function_update_invoke_arn = "arn:aws:apigateway:ap-southeast-1:lambda:path/2015-03-31/functions/arn:aws:lambda:ap-southeast-1:623552185285:function:bbsdm-user-update/invocations"

# APIGW Method: DELETE
# APIGW Lambda Function Integration: DELETE
aws_lambda_function_delete_invoke_arn = "arn:aws:apigateway:ap-southeast-1:lambda:path/2015-03-31/functions/arn:aws:lambda:ap-southeast-1:623552185285:function:bbsdm-user-delete/invocations"