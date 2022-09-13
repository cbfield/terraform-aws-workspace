provider "aws" {
  region = local.aws_provider["default"].region
  assume_role {
    external_id  = var.aws_account_id
    role_arn     = local.aws_provider["default"].role_arn
    session_name = "terraform-${var.aws_account_id}"
  }
  default_tags {
    tags = {
      "Managed By Terraform" = "true"
    }
  }
}

provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
  assume_role {
    external_id  = var.aws_account_id
    role_arn     = local.aws_provider["default"].role_arn
    session_name = "terraform-${var.aws_account_id}"
  }
  default_tags {
    tags = {
      "Managed By Terraform" = "true"
    }
  }
}

provider "aws" {
  alias  = "ohio"
  region = "us-east-2"
  assume_role {
    external_id  = var.aws_account_id
    role_arn     = local.aws_provider["default"].role_arn
    session_name = "terraform-${var.aws_account_id}"
  }
  default_tags {
    tags = {
      "Managed By Terraform" = "true"
    }
  }
}

provider "aws" {
  alias  = "california"
  region = "us-west-1"
  assume_role {
    external_id  = var.aws_account_id
    role_arn     = local.aws_provider["default"].role_arn
    session_name = "terraform-${var.aws_account_id}"
  }
  default_tags {
    tags = {
      "Managed By Terraform" = "true"
    }
  }
}

provider "aws" {
  alias  = "oregon"
  region = "us-west-2"
  assume_role {
    external_id  = var.aws_account_id
    role_arn     = local.aws_provider["default"].role_arn
    session_name = "terraform-${var.aws_account_id}"
  }
  default_tags {
    tags = {
      "Managed By Terraform" = "true"
    }
  }
}

provider "aws" {
  alias  = "logging"
  region = local.aws_provider["logging"].region
  assume_role {
    external_id  = var.aws_account_id
    role_arn     = local.aws_provider["logging"].role_arn
    session_name = "terraform-${var.aws_account_id}"
  }
  default_tags {
    tags = {
      "Managed By Terraform" = "true"
    }
  }
}

provider "aws" {
  alias  = "network"
  region = local.aws_provider["network"].region
  assume_role {
    external_id  = var.aws_account_id
    role_arn     = local.aws_provider["network"].role_arn
    session_name = "terraform-${var.aws_account_id}"
  }
  default_tags {
    tags = {
      "Managed By Terraform" = "true"
    }
  }
}
