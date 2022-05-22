provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
  assume_role {
    role_arn    = "arn:aws:iam::${var.AWS_ACCOUNT_ID}:${var.TF_ROLE ? "role" : "user"}/terraform"
    external_id = var.AWS_EXTERNAL_ID
  }
}

provider "aws" {
  alias  = "ohio"
  region = "us-east-2"
  assume_role {
    role_arn    = "arn:aws:iam::${var.AWS_ACCOUNT_ID}:${var.TF_ROLE ? "role" : "user"}/terraform"
    external_id = var.AWS_EXTERNAL_ID
  }
}

provider "aws" {
  alias  = "california"
  region = "us-west-1"
  assume_role {
    role_arn    = "arn:aws:iam::${var.AWS_ACCOUNT_ID}:${var.TF_ROLE ? "role" : "user"}/terraform"
    external_id = var.AWS_EXTERNAL_ID
  }
}

provider "aws" {
  alias  = "oregon"
  region = "us-west-2"
  assume_role {
    role_arn    = "arn:aws:iam::${var.AWS_ACCOUNT_ID}:${var.TF_ROLE ? "role" : "user"}/terraform"
    external_id = var.AWS_EXTERNAL_ID
  }
}

provider "aws" {
  alias  = "networking"
  region = "us-east-1"
  assume_role {
    role_arn    = "arn:aws:iam::${var.AWS_ACCOUNT_ID_NETWORKING}:${var.TF_ROLE ? "role" : "user"}/dns-${var.AWS_ACCOUNT_ID}"
    external_id = var.AWS_EXTERNAL_ID_NETWORKING
  }
}
