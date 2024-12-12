# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_instance" "myec2" {
  ami                                  = "ami-04a81a99f5ec58529"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1a"
  instance_type                        = "t2.micro"
  key_name                             = "ec2-key"
  private_ip                           = "172.31.40.86"
  security_groups                      = ["launch-wizard-3"]
  subnet_id                            = "subnet-01fad936e7b524766"
  tags = {
    Name = "vault"
  }
  tags_all = {
    Name = "vault"
  }
  tenancy                     = "default"
  vpc_security_group_ids      = ["sg-0916b5edbb2845548"]
  
  
}