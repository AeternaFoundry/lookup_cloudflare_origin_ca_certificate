data "cloudflare_origin_ca_certificate" "origin_ca_certificate_lookup" {
  for_each = var.origin_ca_certificate_lookup

  certificate_id = each.value.certificate_id
  filter         = each.value.filter
}

