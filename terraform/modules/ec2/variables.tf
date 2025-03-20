variable "ec2_instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the instances"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where EC2 instances will be created"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs to attach to EC2 instances"
  type        = list(string)
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "tags" {
  description = "Tags to assign to EC2 instances"
  type        = map(string)
}
