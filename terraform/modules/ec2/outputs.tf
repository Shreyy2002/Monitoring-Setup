output "target_instance_id" {
  description = "ID of the target instance (Node Exporter)"
  value       = aws_instance.target.id
}

output "monitoring_instance_id" {
  description = "ID of the monitoring instance (Prometheus, Grafana)"
  value       = aws_instance.monitoring.id
}

output "target_instance_private_ip" {
  description = "Private IP of the target instance"
  value       = aws_instance.target.private_ip
}

output "monitoring_instance_private_ip" {
  description = "Private IP of the monitoring instance"
  value       = aws_instance.monitoring.private_ip
}

output "target_instance_public_ip" {
  description = "Public IP of the target instance"
  value       = aws_instance.target.public_ip
}

output "monitoring_instance_public_ip" {
  description = "Public IP of the monitoring instance"
  value       = aws_instance.monitoring.public_ip
}


