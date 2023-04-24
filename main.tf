variable "alias_name" {
  description = "The alias to associate with the KMS key"
  type        = string
  default = ""
}

module "kms_key_alias" {
  source          = "./modules/kms-key"
  alias_name      = "alias/teston24th"
}
