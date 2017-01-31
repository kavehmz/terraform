data "aws_iam_policy_document" "policy_assume_super" {
  statement {
    actions = ["sts:AssumeRole"]

    condition {
      test     = "Bool"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["true"]
    }

    principals {
      type        = "AWS"
      identifiers = ["${formatlist("arn:aws:iam::%s:user/%s", var.current_account_id,var.users_super)}"]
    }
  }
}
