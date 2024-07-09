variable "region" {
  description = "The AWS region to bootstrap"
  type        = string
}

variable "role_arn" {
  description = "The ARN of the role to assume"
  type        = string
  default     = "arn:aws:iam::aws:policy/AdministratorAccess"
}

variable "trust_account_id" {
  description = "The AWS account ID to trust"
  type        = string
  default     = null
  nullable    = true
}
