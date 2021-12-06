variable "cnames" {
  type    = map(string)
  default = {}
}

variable "a_records" {
  type    = map(string)
  default = {}
}

variable "parent_domain" {
  type    = string
  default = "example.com"
}
