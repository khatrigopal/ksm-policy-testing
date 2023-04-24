### Backend ###
# S3
###############

terraform {
  backend "s3" {
    bucket = "khatrig-githubaction"
    key = "new-kms-new-policy.tfstate"
    region = "us-east-1"
  }
}
