locals {
  region = "us-west-2"
}

provider "aws" {
  region = local.region
}

module "bootstrap" {
  source  = "truemark/cdk-bootstrap/aws"
  version = "0.1.1"
  region = "us-west-2"
}
