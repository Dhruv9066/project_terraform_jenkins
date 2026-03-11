# terraform {
#   cloud {
#     organization = "Demo_Terraform"
#     workspaces {
#       name = "project_terraform_jenkins"
#     }
#   }
# }

provider "aws" {
    region = "us-east-1"
}