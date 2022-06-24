locals {
  aws_provider_defaults = {
    account_id = var.aws_account_id
    region     = "us-west-2"
    role_name  = "terraform"
    role_path  = "/service/"
  }
  aws_provider = {
    for key, value in merge(
      { for name in ["default", "logging", "network"] : name => local.aws_provider_defaults },
      defaults(var.aws_provider, local.aws_provider_defaults)
      ) : key => merge(value, {
        role_arn = "arn:aws:iam::${value.account_id}:role${value.role_path}${value.role_name}"
      }
    )
  }
}
