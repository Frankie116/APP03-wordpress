# output public_dns_name {
#   description = "Public DNS name of load balancer"
#   value       = module.elb_http.this_elb_dns_name
# }

# output instance_ids {
#   description = "IDs of EC2 instances"
#   value       = [aws_instance.app.*.id]
# }

output use-snapshot {
  value       = var.use-snapshot
}

output my-lb-address {
  value       = "${aws_lb.my-alb.dns_name}:${var.my-port-app1}"
}

# 05a-lb-alb.tf ----------------------------------------------------------
output my-website-address {
  description          = "Full website addresss including port number"
  value                = "${aws_route53_record.my-r53-record.fqdn}:${var.my-port-app1}"
}