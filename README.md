# Terraform AWS CDK Bootstrap

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.67.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.cdk_bootstrap](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [aws_caller_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_region"></a> [region](#input\_region) | The AWS region to bootstrap | `string` | `"us-east-2"` | no |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | The ARN of the role to assume | `string` | `"arn:aws:iam::aws:policy/AdministratorAccess"` | no |
| <a name="input_trust_account_id"></a> [trust\_account\_id](#input\_trust\_account\_id) | The AWS account ID to trust | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->