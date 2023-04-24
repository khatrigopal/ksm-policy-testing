data "aws_iam_policy_document" "kms_policy" {
  statement {
    sid    = "Enable IAM User Permissions"
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = [
      "kms:*"
    ]

    resources = [
      aws_kms_key.kms_key.arn
    ]
  }
}
