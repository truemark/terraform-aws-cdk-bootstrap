provider "aws" {
  region = var.region
}

data "aws_caller_identity" "this" {}

resource "null_resource" "cdk_bootstrap" {
  provisioner "local-exec" {
    command = format(
      "cdk bootstrap aws://%s/%s %s %s",
      data.aws_caller_identity.this.account_id,
      var.region,
      var.cfn_execution_policy_arns != null ? "--cloudformation-execution-policies ${join(",", var.cfn_execution_policy_arns)}" : "",
      var.trust_account_ids != null ? "--trust ${join(",", var.trust_account_ids)}" : ""
    )
  }

  triggers = {
    region                   = var.region
    cfn_execution_policy_arn = var.cfn_execution_policy_arns != null ? join(",", var.cfn_execution_policy_arns) : ""
    trust_account_id         = var.trust_account_ids != null ? "--trust ${join(",", var.trust_account_ids)}" : ""
  }
}
