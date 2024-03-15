# Terraform Cloud Linode Domains


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_linode"></a> [linode](#requirement\_linode) | 2.16.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_linode"></a> [linode](#provider\_linode) | 2.16.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [linode_domain.this](https://registry.terraform.io/providers/linode/linode/2.16.0/docs/resources/domain) | resource |
| [linode_domain_record.this](https://registry.terraform.io/providers/linode/linode/2.16.0/docs/resources/domain_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_records"></a> [dns\_records](#input\_dns\_records) | Info for the dns record | <pre>map(object({<br>    subdomain = string<br>    record_type = string<br>    target = string<br>  }))</pre> | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | The domain this Domain represents. These must be unique in our system; you cannot have two Domains representing the same domain. | `string` | n/a | yes |
| <a name="input_soa_email"></a> [soa\_email](#input\_soa\_email) | Start of Authority email address. This is required for master Domains. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->