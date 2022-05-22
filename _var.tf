variable "AWS_ACCOUNT_ID" {
  description = "Unique identifer of the AWS Account containing this infrastructure"
  type        = string
}

variable "AWS_ACCOUNT_ID_NETWORKING" {
  description = "Unique identifer of the AWS Account containing the DNS records used by this infrastructure"
  type        = string
}

variable "AWS_EXTERNAL_ID" {
  description = "External ID used to assume Standard AWS IAM role in provider statements"
  type        = string
  default     = "000000"
}

variable "AWS_EXTERNAL_ID_NETWORKING" {
  description = "External ID used to assume Networking AWS IAM role in provider statements"
  type        = string
  default     = "000000"
}

variable "AWS_OU_ID" {
  description = "Unique identifer of the AWS Organizations Organizational Unit containing this infrastructure"
  type        = string
  default     = "ou-000000"
}

variable "ENVIRONMENT" {
  description = "The staging environment containing this infrastructure (dev, pre-prod, prod, etc)"
  type        = string
  default     = "dev"
}

variable "TF_ADDRESS" {
  description = "The address of the backend for this workspace"
  type        = string
  default     = "app.terraform.io"
}

variable "TF_ORG" {
  description = "The Terraform Cloud/ Enterprise Organization containing the workspace that manages this Terraform configuration"
  type        = string
}

variable "TF_ROLE" {
  description = "If true, providers use IAM roles, rather than IAM users"
  type        = bool
  default     = true
}

variable "TF_WORKSPACE" {
  description = "The Terraform Cloud/ Enterprise Workspace that manages this Terraform configuration"
  type        = string
  default     = "main"
}
