provider "aws" {
  region = "us-west-2"
  assume_role {
    external_id  = var.aws_account_id
    role_arn     = "arn:aws:iam::${var.aws_account_id}:role/terraform"
    session_name = "terraform-${var.aws_account_id}"
  }
}
