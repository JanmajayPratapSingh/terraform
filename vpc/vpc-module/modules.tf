module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.9.0"
  name = "my-vpc"
  cidr = var.cidr_range
  azs             = ["${var.region}a", "${var.region}b"]
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  map_public_ip_on_launch = true #map public ip to the instances launched in the public subnet
  enable_nat_gateway =true #for private subnets except the db private subnet
  single_nat_gateway = true
  default_security_group_name  = "vpc-module-default-sg-for-ec2-in-public-subnet"
  default_security_group_ingress = var.default_sg_ingress_rules[*]
  

  create_database_subnet_group= true
  create_database_subnet_route_table = true
  database_subnets = var.db_subnets
}
