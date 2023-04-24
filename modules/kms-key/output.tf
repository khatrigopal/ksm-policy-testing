output "kms_key_arn" {
  description = "The ARN of the KMS key"
  value       = aws_kms_key.my_kms_key.arn
}

output "kms_alias_arn" {
  description = "The ARN of the KMS key alias"
  value       = aws_kms_alias.kms_key_alias.arn
}
