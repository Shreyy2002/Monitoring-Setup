resource "aws_instance" "target" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  key_name        = var.key_name

 tags = merge(var.tags, { Name = "target-instance" }) 
}

resource "aws_instance" "monitoring" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  key_name        = var.key_name

 tags = merge(var.tags, { Name = "monitoring-instance" })
}
