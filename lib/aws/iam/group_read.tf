resource "aws_iam_group" "read" {
  name = "read"
}

resource "aws_iam_group_policy_attachment" "attach_read_group" {
  group      = "${aws_iam_group.read.id}"
  policy_arn = "${aws_iam_policy.users.arn}"
}

resource "aws_iam_group_membership" "read" {
  name = "read-group-membership"

  users = ["${var.users}"]

  group = "${aws_iam_group.read.name}"
}
