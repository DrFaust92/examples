# Accessing a private API Gateway using VPC Endpoints

This module creates an example of a privately accessible API Gateway and a VPC Endpoint and restrict access
only through it.

Read the original article on [Medium](https://medium.com/@ilia.lazebnik/simplifying-aws-private-api-gateway-vpc-endpoint-association-with-terraform-b379a247afbf).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| apigw\_name | API Gateway Name | `string` | `"some-api"` | no |
| stage\_name | API Gateway Stage Name | `string` | `"test"` | no |
| tags | Tags to add to resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| apigw\_url | API Gateway URL |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->