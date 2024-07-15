variable "region" {
  description = "The AWS region to bootstrap"
  type        = string
}

variable "cfn_execution_policy_arns" {
  description = "The ARN of the role to assume"
  type        = list(string)
  default     = null
  nullable    = true
}

variable "trust_account_ids" {
  description = "The AWS account ID to trust"
  type        = list(string)
  default     = null
  nullable    = true
}
