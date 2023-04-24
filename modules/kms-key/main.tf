
resource "aws_kms_key" "kms_key" {
  description             = "KMS key for encrypting sensitive data"
  enable_key_rotation     = true
  policy                  = data.aws_iam_policy_document.kms_policy.json
  deletion_window_in_days = 7
}



resource "aws_kms_alias" "kms_key_alias" {
  name          = var.key_alias
  target_key_id = aws_kms_key.kms_key.key_id
}

