data "aws_iam_user" "lagumen" {
  user_name = "${aws_iam_user.iam_user.name}"
}

output "userid-info" {
  value = aws_iam_user.iam_user.arn
}