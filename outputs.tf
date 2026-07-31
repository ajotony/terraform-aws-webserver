output "instance_public_ip" {
  description = "EC2 Public IP"
  value       = module.compute.instance_public_ip
}

output "instance_public_dns" {
  description = "EC2 Public DNS"
  value       = module.compute.instance_public_dns
}

output "website_url" {
  description = "Website URL"
  value       = "http://${module.compute.instance_public_ip}"
}