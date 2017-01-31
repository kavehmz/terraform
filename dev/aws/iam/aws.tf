variable "region" {
  default = "us-east-1"
}

provider "aws" {
  region = "${var.region}"
}

variable "iam_state_bucket_name" {
  default = "terraform_state_iam"
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "remote_iam_state_bucket" {
  bucket = "${var.iam_state_bucket_name}_${data.aws_caller_identity.current.account_id}"
  acl    = "private"
  region = "us-east-1"

  versioning {
    enabled = false
  }
}

output "remote_iam_state_bucket" {
  value = "${aws_s3_bucket.remote_iam_state_bucket.bucket}"
}

variable "users" {
  default = ["kaveh", "nobody"]
}

variable "users_read" {
  default = ["kaveh", "nobody"]
}

variable "users_write" {
  default = ["kaveh"]
}

variable "users_delete" {
  default = ["kaveh"]
}

variable "users_super" {
  default = ["kaveh"]
}

module "iam" {
  source                = "../../../lib/aws/iam"
  users                 = "${var.users}"
  users_read            = "${var.users_read}"
  users_write           = "${var.users_write}"
  users_super           = "${var.users_super}"
  users_delete          = "${var.users_delete}"
  current_account_id    = "${data.aws_caller_identity.current.account_id}"
  iam_state_bucket_name = "${var.iam_state_bucket_name}"
}
