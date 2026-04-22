variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default = "East Asia"
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

variable "subnet_id" {
  description = "Subnet ID where NIC will be attached"
  type        = string
}