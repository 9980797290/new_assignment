resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [for i in aws_iam_user.admin1 : i.name]

  group = aws_iam_group.group.name
}

resource "aws_iam_group" "group" {
  name = "jhansi-groups"
}

resource "aws_iam_user" "admin1" {
  count = length(var.user_names)
  name = var.user_names[count.index]
  path = "/system/"
}