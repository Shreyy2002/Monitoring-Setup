output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "ID of the created subnet"
  value       = module.vpc.subnet_id
}

output "security_group_id" {
  description = "Security Group ID"
  value       = module.security_group.security_group_id
}

output "target_instance_public_ip" {
  description = "Public IP of Target Server"
  value       = module.ec2.target_instance_public_ip
}

output "monitoring_instance_public_ip" {
  description = "Public IP of Monitoring Server"
  value       = module.ec2.monitoring_instance_public_ip
}
