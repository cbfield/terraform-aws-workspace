variable "aws_account_id" {
  description = "The AWS Account ID of the AWS account used by the default AWS provider"
  type        = string
}

variable "aws_org_id" {
  description = "The AWS Organization ID of the AWS account used by the default AWS provider"
  type        = string
  default     = "o-000000"
}

variable "aws_ou_id" {
  description = "The AWS Organizational Unit ID of the AWS account used by the default AWS provider"
  type        = string
  default     = "ou-000000"
}

variable "aws_provider" {
  description = <<-EOF
    Configurations for IAM roles used by AWS providers. Use the keys `default`,
    `logging`, and `network` to overwrite corresponding provider configurations
  EOF
  type = map(object({
    account_id = optional(string)
    region     = optional(string)
    role_name  = optional(string)
    role_path  = optional(string)
  }))
  default = {}
}
