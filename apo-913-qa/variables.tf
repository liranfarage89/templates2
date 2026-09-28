variable "dollar_escape" {
  type    = string
  default = "prefix $${SomeVar} suffix"
}

variable "percent_escape" {
  type    = string
  default = "%%{if true}yes%%{endif}"
}

variable "plain" {
  type    = string
  default = "plain"
}
