
variable "var1" { 
	default = "dummy_var_1"
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
