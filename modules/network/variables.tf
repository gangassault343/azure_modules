variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
}

variable "rg_name" {
  description = "Name of the Resource Group"
  type  = string
  default = "my-resource"

}

variable "address_space" {
  description = "Address space for the VNet"
  type        = list(string)
}

variable "subnets" {
  description = "List of subnets"
  type = list(object({
    name           = string
    address_prefix = string
  }))
}