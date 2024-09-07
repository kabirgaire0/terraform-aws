output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "EC2 instance Public IP Address"
  value       = aws_instance.app_server.public_ip
}
