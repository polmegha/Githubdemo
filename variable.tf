variable "resource_group_name" {
  type = list(string)
}
variable "location" {
  type = list(string)
}

variable "vnet_name" {
  type = list(string)
}
variable "vnet_address_space" {
  type = list(string)
}


# variable "subnet_name" {}
# variable "subnet_address_prefix" {}

variable "tags" {
  type = map(string)
}
