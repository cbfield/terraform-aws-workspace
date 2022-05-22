# Application Stack Infrastructure

This is not a Terraform module, but a template for a Terraform workspace. This workspace is meant to manage the infrastructure for a single, atomic application stack. Some boilerplate variables and outputs are provided in order to expedite the creation of this application stack.

## Providers

This workspace expects to be able to assume two AWS IAM roles:

1. `terraform` : This role is expected to exist in the account that will contain the infrastructure managed by this workspace. All AWS resources except DNS records will be managed using this role.
2. `dns-${aws_account_id}` : This role is expected to exist within a separate, "Networking" AWS account. This role provides the permissions to manage DNS records within certain AWS Route 53 hosted zones owned by this Networking account. This is done so that hosted zones can be managed in that Networking account where they are available to a central Route 53 Resolver system, while allowing the records used by this AWS account to be managed with the other Terraform configurations that are specific to this account.

External IDs are passed in the provider statements that assume each of these roles. If no assume role policy exists for these roles that enforce the usage of external IDs, then this only provides a unique identifier for the source of the role assumption. If one such assume role policy exists, then this can also improve the security of this role assumption.

## Variables

This workspace comes with some standard variables that carry the values necessary to connect this workspace to AWS and Terraform Cloud/ Enterprise.

### Required Variables

1. `var.AWS_ACCOUNT_ID` : The unique ID of the AWS account that will contain this infrastructure (ex. `012345678901`)
2. `var.AWS_ACCOUNT_ID_NETWORKING` : The unique ID of the AWS account that will contain the DNS records used by this infrastructure (ex. `012345678901`)
3. `var.TF_ORG` : The name of the Terraform Cloud/ Enterprise organization containing the workspace that will manage this Terraform configuration

### Optional Variables

1. `var.AWS_EXTERNAL_ID` : A unique identifier used when assuming the standard AWS IAM role to apply this configuration. Defaults to `000000`.
2. `var.AWS_EXTERNAL_ID_NETWORKING` : A unique identifier used when assuming the networking AWS IAM role to apply this configuration. Defaults to `000000`.
3. `var.AWS_OU_ID` : The unique identifier of the AWS Organizations Organizational Unit containing the account that this infrastructure is built within. Defaults to `ou-000000`.
4. `var.ENVIRONMENT` : The staging environment containing this infrastructure. Defaults to `dev`.
5. `var.TF_ADDRESS` : The web address of the back-end for this Terraform configuration. Defaults to `app.terraform.io`.
6. `var.TF_ROLE` : If true, providers use IAM roles, rather than IAM users. Defaults to `true`
7. `var.TF_WORKSPACE` : The name of the Terraform Cloud/ Enterprise workspace that manages this Terraform configuration. Defaults to `main`.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
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
| <a name="input_AWS_ACCOUNT_ID"></a> [AWS\_ACCOUNT\_ID](#input\_AWS\_ACCOUNT\_ID) | Unique identifer of the AWS Account containing this infrastructure | `string` | n/a | yes |
| <a name="input_AWS_ACCOUNT_ID_NETWORKING"></a> [AWS\_ACCOUNT\_ID\_NETWORKING](#input\_AWS\_ACCOUNT\_ID\_NETWORKING) | Unique identifer of the AWS Account containing the DNS records used by this infrastructure | `string` | n/a | yes |
| <a name="input_AWS_EXTERNAL_ID"></a> [AWS\_EXTERNAL\_ID](#input\_AWS\_EXTERNAL\_ID) | External ID used to assume Standard AWS IAM role in provider statements | `string` | `"000000"` | no |
| <a name="input_AWS_EXTERNAL_ID_NETWORKING"></a> [AWS\_EXTERNAL\_ID\_NETWORKING](#input\_AWS\_EXTERNAL\_ID\_NETWORKING) | External ID used to assume Networking AWS IAM role in provider statements | `string` | `"000000"` | no |
| <a name="input_AWS_OU_ID"></a> [AWS\_OU\_ID](#input\_AWS\_OU\_ID) | Unique identifer of the AWS Organizations Organizational Unit containing this infrastructure | `string` | `"ou-000000"` | no |
| <a name="input_ENVIRONMENT"></a> [ENVIRONMENT](#input\_ENVIRONMENT) | The staging environment containing this infrastructure (dev, pre-prod, prod, etc) | `string` | `"dev"` | no |
| <a name="input_TF_ADDRESS"></a> [TF\_ADDRESS](#input\_TF\_ADDRESS) | The address of the backend for this workspace | `string` | `"app.terraform.io"` | no |
| <a name="input_TF_ORG"></a> [TF\_ORG](#input\_TF\_ORG) | The Terraform Cloud/ Enterprise Organization containing the workspace that manages this Terraform configuration | `string` | n/a | yes |
| <a name="input_TF_ROLE"></a> [TF\_ROLE](#input\_TF\_ROLE) | If true, providers use IAM roles, rather than IAM users | `bool` | `true` | no |
| <a name="input_TF_WORKSPACE"></a> [TF\_WORKSPACE](#input\_TF\_WORKSPACE) | The Terraform Cloud/ Enterprise Workspace that manages this Terraform configuration | `string` | `"main"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_AWS_ACCOUNT_ID"></a> [AWS\_ACCOUNT\_ID](#output\_AWS\_ACCOUNT\_ID) | The value provided for var.AWS\_ACCOUNT\_ID |
| <a name="output_AWS_ACCOUNT_ID_NETWORKING"></a> [AWS\_ACCOUNT\_ID\_NETWORKING](#output\_AWS\_ACCOUNT\_ID\_NETWORKING) | The value provided for var.AWS\_ACCOUNT\_ID\_NETWORKING |
| <a name="output_AWS_EXTERNAL_ID"></a> [AWS\_EXTERNAL\_ID](#output\_AWS\_EXTERNAL\_ID) | The value provided for var.AWS\_EXTERNAL\_ID |
| <a name="output_AWS_EXTERNAL_ID_NETWORKING"></a> [AWS\_EXTERNAL\_ID\_NETWORKING](#output\_AWS\_EXTERNAL\_ID\_NETWORKING) | The value provided for var.AWS\_EXTERNAL\_ID\_NETWORKING |
| <a name="output_AWS_OU_ID"></a> [AWS\_OU\_ID](#output\_AWS\_OU\_ID) | The value provided for var.AWS\_OU\_ID |
| <a name="output_ENVIRONMENT"></a> [ENVIRONMENT](#output\_ENVIRONMENT) | The value provided for var.ENVIRONMENT |
| <a name="output_TF_ADDRESS"></a> [TF\_ADDRESS](#output\_TF\_ADDRESS) | The value provided for var.TF\_ADDRESS |
| <a name="output_TF_ORG"></a> [TF\_ORG](#output\_TF\_ORG) | The value provided for var.TF\_ORG |
| <a name="output_TF_ROLE"></a> [TF\_ROLE](#output\_TF\_ROLE) | The value provided for var.TF\_ROLE |
| <a name="output_TF_WORKSPACE"></a> [TF\_WORKSPACE](#output\_TF\_WORKSPACE) | The value provided for var.TF\_WORKSPACE |
| <a name="output_aws_caller_identity"></a> [aws\_caller\_identity](#output\_aws\_caller\_identity) | The AWS caller identity used to manage this workspace |
| <a name="output_aws_region"></a> [aws\_region](#output\_aws\_region) | The main AWS region used by this workspace |
<!-- END_TF_DOCS -->
