
variable "var1" { 
	default = "dummy_var_1"
	description = "dummy var 2 description"
}

variable "var2" { 
	default = "dummy-var-2"
	description = "dummy var 2 descritpion"
}

resource "local_file" "foo" {
    content  = jsonencode({
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
    filename = "${path.module}/foo.bar"
}


output var1_output {
	value = var.var1
}

output var2_output {
	value = var.var2
}

output local_file_content {
	value = local_file.foo.content
}
