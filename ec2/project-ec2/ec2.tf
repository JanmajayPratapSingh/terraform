module "mymodule" {
    source = "../ec2_module/ec2"
    instance_type = var.instance_type
    
    }