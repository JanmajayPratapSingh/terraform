data "aws_iam_policy" "example" {
  name = "AdministratorAccess"
}

resource "aws_iam_policy" "policy" {
  name        = "test-policy"
  description = "A test policy"
  policy      = data.aws_iam_policy.example.policy
}

resource "aws_iam_group_policy_attachment" "test-attach" {
  group      = aws_iam_group.developers.name
  policy_arn = aws_iam_policy.policy.arn
}