variable "origin_ca_certificate_lookup" {
  description = <<EOT
Map of origin_ca_certificate_lookup, attributes below
Optional:
    - certificate_id
    - filter
EOT

  type = map(object({
    certificate_id = optional(string)
    filter = optional(object({
      limit   = optional(number)
      offset  = optional(number)
      zone_id = string
    }))
  }))
}

