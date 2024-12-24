terraform {
 required_providers {
 aws = {
 source = "hashicorp/aws"
 version = "~> 5.0"
 }
 }
}

# provider "aws" {
#   region = var.aws_region
# }

# provider.tf
provider "aws" {
region = var.aws_region
}
