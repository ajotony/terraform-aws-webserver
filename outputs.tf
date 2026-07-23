output "instance_public_ip" {
  description = "EC2 Public IP"

  value = aws_instance.web_server.public_ip
}

output "instance_public_dns" {
  description = "EC2 Public DNS"

  value = aws_instance.web_server.public_dns
}

output "website_url" {
  description = "Website URL"

  value = "http://${aws_instance.web_server.public_ip}"
}