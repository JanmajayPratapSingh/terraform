resource "aws_iam_user" "lb" {
  name = "Shivalikaa-new"
  path = "/system/"

  tags = {
    tag-key = "user"
  }
  force_destroy = true
}

resource "aws_iam_access_key" "lb" {
  user = aws_iam_user.lb.name
}