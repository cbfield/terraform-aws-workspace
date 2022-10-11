# AWS Workspace

This is a template for a Terraform Cloud/ Enterprise workspace that primarily manages AWS resources.

## Initialization

This workspace initializes AWS providers as described below. The only piece of information required for this is the ID of the AWS account that this workspace is meant to interact with. The value for that is provided with the variable `var.aws_account_id`.

If you also wish to run local operations like imports, you will need to update the cloud configuration in the `_config.tf` file with the organization and workspace to use (lines 3 and 5). This would have been handled with variables, but alas these configurations do not accept interpolated values.

## Providers

This workspace will be initialized with seven providers, using a total of three AWS IAM roles.

Five of these providers use the same, `default` IAM role. One is the default provider, and the remaining four use the same role in specific geographic regions (us-east-1, us-east-2, us-west-1, us-west-2).

The remaining two providers, `logging` and `network`, are meant to be used to reach into other AWS accounts. This is done to conform with AWS best practices, which recommend using dedicated AWS accounts for each of logging and networking.

By default, all providers will use the same AWS IAM role, which uses the arn:
```hcl
"arn:aws:iam::${var.aws_account_id}:role/service/terraform"
```

This behavior can be overwritten using the variable `var.aws_provider`, like so:
```hcl
aws_provider = {
  network = {
    account_id = "111222333444"
    region     = "us-east-1"
    role_name  = "terraform-cloud"
    role_path  = "/service/"
  }
  ... ( values for other keys [default, logging, network] )
}
```

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
| <a name="input_aws_account_id"></a> [aws\_account\_id](#input\_aws\_account\_id) | The AWS Account ID of the AWS account used by the default AWS provider | `string` | n/a | yes |
| <a name="input_aws_ou_id"></a> [aws\_ou\_id](#input\_aws\_ou\_id) | The AWS Organizational Unit ID of the AWS account used by the default AWS provider | `string` | `"ou-000000"` | no |
| <a name="input_aws_provider"></a> [aws\_provider](#input\_aws\_provider) | Configurations for IAM roles used by AWS providers. Use the keys `default`,<br>`logging`, and `network` to overwrite corresponding provider configurations | <pre>map(object({<br>    account_id = optional(string)<br>    region     = optional(string)<br>    role_name  = optional(string)<br>    role_path  = optional(string)<br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_account_id"></a> [aws\_account\_id](#output\_aws\_account\_id) | The value provided for var.aws\_account\_id |
| <a name="output_aws_caller_identity"></a> [aws\_caller\_identity](#output\_aws\_caller\_identity) | The AWS entity (user/ role) assumed by the default AWS provider for this workspace |
| <a name="output_aws_ou_id"></a> [aws\_ou\_id](#output\_aws\_ou\_id) | The value provided for var.aws\_ou\_id |
| <a name="output_aws_provider"></a> [aws\_provider](#output\_aws\_provider) | The value provided for var.aws\_provider, with inserted default values |
| <a name="output_aws_region"></a> [aws\_region](#output\_aws\_region) | The AWS region used by the default AWS provider for this workspace |
<!-- END_TF_DOCS -->
