provider "aws" {
  region = var.AWS_REGION
}
provider "vault" {
  address = "http://18.208.109.109:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "0980c7d0-54de-6a6f-fe39-54256df3943c"
      secret_id = "dc5d963a-7fa0-bcab-9f2d-4febe980e8ff"
    }
  }
}
