# getting DNS of load balancer 

output "lb_dns_name" {
  description = "DNS OF LOAD BALANCER"
  value       = aws_lb.external-lb.dns_name

}
