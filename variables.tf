variable "domain" {
  description = "The domain this Domain represents. These must be unique in our system; you cannot have two Domains representing the same domain."
  type = string
}

variable "soa_email" {
  description = "Start of Authority email address. This is required for master Domains."
  type = string
}

variable "dns_records" {
  description = "Info for the dns record"
  type = map(object({
    subdomain = string
    record_type = string
    target = string
  }))
}
