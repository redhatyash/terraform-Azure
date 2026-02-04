######## Resource Group vairbales
variable "rg_name" {
  
}

## Virtual Network Variables

variable "vent_name" {
  
}

variable "vnet_address_space" {
    type = list(string)
}

variable "vnet_private_subnet01" {
  
}

variable "vnet_private_subnet_address_space" {
    type = list(string)
}

variable "vnet_public_subnet01" {
  
}

variable "vnet_public_subnet_address_space" {
    type = list(string)
}

variable "vnet_db_subnet01" {
  
}

variable "vnet_db_subnet_address_space" {
    type = list(string)
}

variable "tags" {
    type = map(string)
}