resource "aws_iam_role" "assume_role" {
  name                = var.name
  max_session_duration = var.max_session_duration
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::${var.env0_aws_account_id}:root"
        }
        Condition = {
          StringEquals = {
            "sts:ExternalId" = var.external_id
          }
        }
      },
    ]
  })
}


resource "aws_iam_role_policy_attachment" "policy_attach" {
  for_each = local.iam_policies_map
  role = aws_iam_role.assume_role.name
  policy_arn = each.value

}

locals {
  iam_policies_map = {
  for idx, value in var.iam_policies: idx => value
  }
}

