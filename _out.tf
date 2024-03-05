output "aws_account_id" {
  description = "The value provided for var.aws_account_id"
  value       = var.aws_account_id
}

output "aws_caller_identity" {
  description = "The AWS entity (user/ role) assumed by the default AWS provider for this workspace"
  value       = data.aws_caller_identity.current
}

output "aws_ou_id" {
  description = "The value provided for var.aws_ou_id"
  value       = var.aws_ou_id
}

output "aws_region" {
  description = "The AWS region used by the default AWS provider for this workspace"
  value       = data.aws_region.current
}
