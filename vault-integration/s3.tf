resource "aws_s3_bucket" "name" {
    bucket = data.vault_kv_secret_v2.example.data["try"]
  
}