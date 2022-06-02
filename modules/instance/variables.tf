//Instance vars

variable "instance_name" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_image" {
  type = string
}

variable "zone" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "subnet_self_link" {
  type = string
}


//Address vars

variable "address_name" {
  description = "Instance address name"
  type        = string
  default     = "my-internal-address"
}

variable "subnet_id" {
  type = string
}

variable "address_type" {
  description = "Instance address type"
  type        = string
  default     = "INTERNAL"
}

variable "address" {
  description = "Instance address"
  type        = string
  default     = "192.168.0.10"
}

variable "region" {
  type = string
}


//Disk vars

variable "disk_name" {
  description = "Instance disk name"
  type        = string
  default     = "instance-disk"
}

variable "disk_type" {
  description = "Instance disk type"
  type        = string
  default     = "pd-balanced"
}

variable "disk_size" {
  description = "Instance disk size"
  type        = string
  default     = "8"
}