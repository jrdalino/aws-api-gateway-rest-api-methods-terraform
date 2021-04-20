# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."
}

variable "aws_role" {
  type        = string
  description = "Used AWS Role."
}

# Tagging
variable "namespace" {
  type        = string
  description = "Namespace."
}

variable "bounded_context" {
  type        = string
  description = "Bounded Context."
}

variable "environment" {
  type        = string
  description = "Environment."
}

# APIGW Resource: /users
variable "aws_api_gateway_rest_api_id" {
  type        = string
  description = ""
}

variable "aws_api_gateway_rest_api_root_resource_id" {
  type        = string
  description = ""
}

variable "aws_api_gateway_resource_path_part_create_index" {
  type        = string
  description = ""
}

# APIGW Method: Create > None
# APIGW Lambda Function Integration: Create >
variable "aws_lambda_function_create_invoke_arn" {
  type        = string
  description = ""
}

# APIGW Method: Index > None
# APIGW Lambda Function Integration: Index >
variable "aws_lambda_function_index_invoke_arn" {
  type        = string
  description = ""
}

# APIGW Resource: /users/{id}
variable "aws_api_gateway_resource_path_part_read_update_delete" {
  type        = string
  description = ""
}

# APIGW Method: Read
# APIGW Lambda Function Integration: Read
variable "aws_lambda_function_read_invoke_arn" {
  type        = string
  description = ""
}

# APIGW Method: Update
# APIGW Lambda Function Integration: Update
variable "aws_lambda_function_update_invoke_arn" {
  type        = string
  description = ""
}

# APIGW Method: DELETE
# APIGW Lambda Function Integration: DELETE
variable "aws_lambda_function_delete_invoke_arn" {
  type        = string
  description = ""
}