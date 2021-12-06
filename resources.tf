resource "pihole_dns_record" "a" {
  for_each = var.a_records
  domain   = each.key
  ip       = each.value
}

resource "pihole_cname_record" "cname" {
  for_each   = var.cnames
  domain     = each.key
  target     = each.value
  depends_on = [pihole_dns_record.a]
}
