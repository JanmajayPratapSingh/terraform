resource "aws_instance" "myec2" {
    ami = "ami-04a81a99f5ec58529"
    instance_type = "t2.micro"
    key_name = aws_key_pair.deployer.key_name
    subnet_id = "${element(module.vpc.public_subnets, 0)}"

    
    connection {
    type        = "ssh"
    user        = "ubuntu"  # Replace with the appropriate username for your EC2 instance
    private_key = file("./deployer-key")  # Replace with the path to your private key
    host        = self.public_ip
  }

  # File provisioner to copy a file from local to the remote EC2 instance
  provisioner "file" {
    source      = "app.py"  # Replace with the path to your local file
    destination = "/home/ubuntu/app.py"  # Replace with the path on the remote instance
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'Hello from the remote instance'",
      "sudo apt update -y",  # Update package lists (for ubuntu)
      "sudo apt-get install -y python3-pip",  # Example package installation
      "cd /home/ubuntu",
      "sudo pip install flask",
      "sudo python3 app.py &",
    ]
  }


}