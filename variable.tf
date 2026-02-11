variable "resource_group_name" {}
variable "location" {}

variable "vnet_name" {}
variable "vnet_address_space" {}

variable "subnet_name" {
  type = string
}

variable "subnet_address_prefix" {
  type = list(string)
}


# variable "subnet_name" {}
# variable "subnet_address_prefix" {}

variable "tags" {
  type = map(string)
}
