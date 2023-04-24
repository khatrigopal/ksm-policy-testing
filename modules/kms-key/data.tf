data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "kms_policy" {
  statement {
    sid = "Enable IAM User Permission"
    effect  = "Allow"
    principals {
      type = "AWS"
      #identifiers = ["*"]
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"]
      
    }
    actions = ["kms:*"]
    resources = ["*"]
    
      #aws_kms_key.my_kms_key.arn,
    #]
  }
}
