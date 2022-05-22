output "AWS_ACCOUNT_ID" {
  description = "The value provided for var.AWS_ACCOUNT_ID"
  value       = var.AWS_ACCOUNT_ID
}

output "AWS_ACCOUNT_ID_NETWORKING" {
  description = "The value provided for var.AWS_ACCOUNT_ID_NETWORKING"
  value       = var.AWS_ACCOUNT_ID_NETWORKING
}

output "AWS_EXTERNAL_ID" {
  description = "The value provided for var.AWS_EXTERNAL_ID"
  value       = var.AWS_EXTERNAL_ID
}

output "AWS_EXTERNAL_ID_NETWORKING" {
  description = "The value provided for var.AWS_EXTERNAL_ID_NETWORKING"
  value       = var.AWS_EXTERNAL_ID_NETWORKING
}

output "AWS_OU_ID" {
  description = "The value provided for var.AWS_OU_ID"
  value       = var.AWS_OU_ID
}

output "ENVIRONMENT" {
  description = "The value provided for var.ENVIRONMENT"
  value       = var.ENVIRONMENT
}

output "TF_ADDRESS" {
  description = "The value provided for var.TF_ADDRESS"
  value       = var.TF_ADDRESS
}

output "TF_ORG" {
  description = "The value provided for var.TF_ORG"
  value       = var.TF_ORG
}

output "TF_ROLE" {
  description = "The value provided for var.TF_ROLE"
  value       = var.TF_ROLE
}

output "TF_WORKSPACE" {
  description = "The value provided for var.TF_WORKSPACE"
  value       = var.TF_WORKSPACE
}

output "aws_caller_identity" {
  description = "The AWS caller identity used to manage this workspace"
  value       = data.aws_caller_identity.current
}

output "aws_region" {
  description = "The main AWS region used by this workspace"
  value       = data.aws_region.current
}
