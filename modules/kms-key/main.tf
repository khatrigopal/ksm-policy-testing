resource "aws_kms_key" "my_kms_key" {
  description = var.key_description
  policy      = data.aws_iam_policy_document.kms_policy.json
}


resource "aws_kms_alias" "kms_key_alias" {
  name          = var.alias_name
  target_key_id = aws_kms_key.my_kms_key.id
}
