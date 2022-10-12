variable "aws_account_id" {
  description = "The AWS Account ID of the AWS account used by the default AWS provider"
  type        = string
  default     = "000000000000"
}

variable "aws_account_id_logging" {
  description = "The AWS Account ID of the AWS account responsible for ingesting logs from this AWS organization"
  type        = string
  default     = "000000000000"
}

variable "aws_account_id_network" {
  description = "The AWS Account ID of the AWS account that manages networking resources in this AWS organization"
  type        = string
  default     = "000000000000"
}

variable "aws_ou_id" {
  description = "The AWS Organizational Unit ID of the AWS account used by the default AWS provider"
  type        = string
  default     = "ou-000000"
}
