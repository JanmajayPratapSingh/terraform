resource "aws_iam_group" "developers" {
  name = "developers"
  path = "/users/"
}
resource "aws_iam_user_group_membership" "example1" {
  user = aws_iam_user.lb.name

  groups = [
    aws_iam_group.developers.name,
  ]
}