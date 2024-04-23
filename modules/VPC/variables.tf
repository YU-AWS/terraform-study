variable "az_a" {
  type = string
}

variable "az_c" {
  type = string
}

variable "az_d" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "cidr_sunet_block_public_a" {
  type = string
}

variable "cidr_sunet_block_public_c" {
  type = string
}

variable "cidr_sunet_block_private_a" {
  type = string
}

variable "cidr_sunet_block_private_c" {
  type = string
}


variable "cidr_rt_block" {
  type = string
}

variable "subnet_tag" {
  default = "*"
  type    = string
}

#variable "vpc_id" {
#  type = string
#}
