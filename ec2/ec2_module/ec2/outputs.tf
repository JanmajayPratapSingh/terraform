output "public_ip_instance" {
  value = aws_instance.web.public_ip
}