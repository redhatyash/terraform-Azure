######### Resource Group Variables

variable "rg_name" {
  type = string
  default = "viitor-pr-rg01"
}
variable "rg_location" {
  type = string
  default = "eastus"
}
variable "tags" {
  type = map(string)
}