variable "aws_account_id" {
  description = "The AWS Account ID of the AWS account used by the default AWS provider"
  type        = string
  default     = "000000000000"
}

variable "aws_ou_id" {
  description = "The AWS Organizational Unit ID of the AWS account used by the default AWS provider"
  type        = string
  default     = "ou-000000"
}
