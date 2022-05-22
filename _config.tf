terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.6"
    }
  }
  backend "remote" {
    organization = var.TF_ORG

    workspaces {
      name = var.TF_WORKSPACE
    }
  }
}
