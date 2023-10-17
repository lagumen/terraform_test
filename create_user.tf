# Create User
resource "aws_iam_user" "iam_user" {
  name = "lagumen"
}


# Give user programmatic access
resource "aws_iam_access_key" "iam_access_key" {
  user = aws_iam_user.iam_user.name

}

# Create Inline Policy
data "aws_iam_policy_document" "s3_put_delete" {
  statement {
    actions = [
      "s3:PutObject",
      "s3:GetObject",
      "s3:DeleteObject"
    ]
    resources = [
      "arn:aws:s3:::terraform-test-bucket-231410/*"
    ]
  }
}

# Attach the Policy to the User
resource "aws_iam_user_policy" "s3_policy" {
  name   = "s3_policy"
  user   = aws_iam_user.iam_user.name
  policy = data.aws_iam_policy_document.s3_put_delete.json
}
