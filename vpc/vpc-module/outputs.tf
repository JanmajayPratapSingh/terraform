output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}


output "aws_instance_public_ip" {
    value = aws_instance.myec2.public_ip
  
}
output "security_group_id" {
  value = module.vpc.default_security_group_id
  
}