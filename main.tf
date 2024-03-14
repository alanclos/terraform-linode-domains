terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.16.0"
    }
  }
}

resource "linode_domain" "this" {
  type      = "master"
  domain    = var.domain
  soa_email = var.soa_email
}

resource "linode_domain_record" "this" {
  for_each    = var.dns_records
  domain_id   = linode_domain.this.id
  name        = each.value.subdomain
  record_type = each.value.record_type
  target      = each.value.target
}
