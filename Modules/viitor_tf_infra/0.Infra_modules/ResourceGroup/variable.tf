variable "rg_name" {
    type = string
  #default = "rg-500"
}

variable "rg_location" {
    type = string
  #default = "west europe"
}
variable "tags" {
    type = map(string)
}