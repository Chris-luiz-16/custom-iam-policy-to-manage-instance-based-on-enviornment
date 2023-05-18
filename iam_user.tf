resource "aws_iam_user" "dev" {
  name          = "Uber-dev"
  force_destroy = true
}

resource "aws_iam_user_login_profile" "dev" {
  user    = aws_iam_user.dev.name
}

resource "aws_iam_policy_attachment" "dev" {
  name       = "Uber-dev"
  users      = [aws_iam_user.dev.name]
  policy_arn = aws_iam_policy.dev.arn
}

resource "aws_iam_user" "prod" {
  name          = "Uber-Prod"
  force_destroy = true
}

resource "aws_iam_user_login_profile" "prod" {
  user    = aws_iam_user.prod.name
  password_length = 10
  password_reset_required = true
}

resource "aws_iam_policy_attachment" "prod" {
  name       = "Uber-prod"
  users      = [aws_iam_user.prod.name]
  policy_arn = aws_iam_policy.prod.arn
}
