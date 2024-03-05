# AWS Workspace

This is a template for a Terraform Cloud/ Enterprise workspace that primarily manages AWS resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.6 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.6 |

## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_account_id"></a> [aws\_account\_id](#input\_aws\_account\_id) | The AWS Account ID of the AWS account used by the default AWS provider | `string` | `"000000000000"` | no |
| <a name="input_aws_account_id_logging"></a> [aws\_account\_id\_logging](#input\_aws\_account\_id\_logging) | The AWS Account ID of the AWS account responsible for ingesting logs from this AWS organization | `string` | `"000000000000"` | no |
| <a name="input_aws_account_id_network"></a> [aws\_account\_id\_network](#input\_aws\_account\_id\_network) | The AWS Account ID of the AWS account that manages networking resources in this AWS organization | `string` | `"000000000000"` | no |
| <a name="input_aws_ou_id"></a> [aws\_ou\_id](#input\_aws\_ou\_id) | The AWS Organizational Unit ID of the AWS account used by the default AWS provider | `string` | `"ou-000000"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_account_id"></a> [aws\_account\_id](#output\_aws\_account\_id) | The value provided for var.aws\_account\_id |
| <a name="output_aws_account_id_logging"></a> [aws\_account\_id\_logging](#output\_aws\_account\_id\_logging) | The value provided for var.aws\_account\_id |
| <a name="output_aws_account_id_network"></a> [aws\_account\_id\_network](#output\_aws\_account\_id\_network) | The value provided for var.aws\_account\_id |
| <a name="output_aws_caller_identity"></a> [aws\_caller\_identity](#output\_aws\_caller\_identity) | The AWS entity (user/ role) assumed by the default AWS provider for this workspace |
| <a name="output_aws_ou_id"></a> [aws\_ou\_id](#output\_aws\_ou\_id) | The value provided for var.aws\_ou\_id |
| <a name="output_aws_region"></a> [aws\_region](#output\_aws\_region) | The AWS region used by the default AWS provider for this workspace |
<!-- END_TF_DOCS -->
