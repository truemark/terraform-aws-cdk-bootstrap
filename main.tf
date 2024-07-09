provider "aws" {
  region = var.region
}

data "aws_caller_identity" "this" {}

resource "null_resource" "cdk_bootstrap" {
  provisioner "local-exec" {
    command = <<EOT
    cdk bootstrap "aws://${data.aws_caller_identity.this.account_id}/${var.region}" --cloudformation-execution-policies ${var.role_arn} --trust ${var.trust_account_id}
    EOT
    environment = {
      AWS_DEFAULT_REGION = var.region
    }
  }
}
