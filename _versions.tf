terraform {
  required_version = "~>1.3"
  cloud {
    organization = "my-org"
    workspaces {
      name = "my-workspace"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.6"
    }
  }
}
