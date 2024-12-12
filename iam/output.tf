output "access_creds" {
    value = aws_iam_access_key.lb.encrypted_secret
  
}
output "secret_creds" {
    value = aws_iam_access_key.lb.secret
    sensitive = true

}