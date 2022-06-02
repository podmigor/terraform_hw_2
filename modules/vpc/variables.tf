variable "project" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "auto_mode" {
  type = bool
}

variable "subnet_name" {
  type = string
}

variable "cidr" {
  type = string
}

variable "region" {
  type = string
}

variable "router_name" {
  description = "VPC router name"
  type = string
  default = "test-router"
}

variable "router_nat_name" {
  description = "VPC router nat name"
  type = string
  default = "test-router-nat"
}

variable "firewall_name" {
  description = "VPC firewall name"
  type = string
  default = "test-firewall"
}