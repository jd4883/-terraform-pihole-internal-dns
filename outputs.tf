output "a_records" { value = pihole_dns_record.a }
output "cnames" { value = pihole_cname_record.cname }
output "domain" { value = var.parent_domain }
