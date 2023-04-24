data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "kms_policy" {
  statement {
    actions = [
      "kms:Encrypt",
      "kms:Decrypt",
      "kms:ReEncrypt*",
      "kms:GenerateDataKey*",
      "kms:DescribeKey",
    ]

    resources = ["${aws_kms_key.kms_key.arn}"]

    principals {
      type        = "AWS"
      identifiers = ["${var.principal_arn}"]
    }
  }
}
