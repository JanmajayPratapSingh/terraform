terraform {
  backend "s3" {
    bucket = "shivalikaa-bucket-to-store-statefile"
    key    = "backend_terraform/terraform.tfstate"
    region = "us-east-1"
  }
}
