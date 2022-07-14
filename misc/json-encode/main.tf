
variable "var1" { 
	default = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::23456:root"
        }
        Condition = {
          StringEquals = {
            "sts:ExternalId" = var.var2
          }
        }
      },
    ]
  })
	description = "dummy var 2 description"
}

variable "var2" { 
	default = "dummy-var-2"
	description = "dummy var 2 descritpion"
}

output var1_output {
	value = var.var1
}

output var2_output {
	value = var.var2
}
