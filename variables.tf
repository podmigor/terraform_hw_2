// Provider vars

variable "project" {
  description = "GCP project id"
  type        = string
  default     = "hillel-project-1"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "credentials" {
  description = "GCP credentials"
  type        = string
  default     = "../../gcp_keys/hillel-project-1-e39e275fb220.json"
}


// VPC vars

variable "vpc_name" {
  description = "VPC name"
  default     = "my-vpc"
  type        = string
}

variable "subnet_name" {
  description = "VPC Subnet name"
  type        = string
  default     = "my-subnet"
}

variable "cidr" {
  description = "VPC IP CIDR range"
  type        = string
  default     = "192.168.0.0/24"
}


//Instance vars

variable "instance_name" {
  description = "Instance name"
  type        = string
  default     = "compute-instance"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "f1-micro"
}

variable "instance_image" {
  description = "Instance image"
  type        = string
  default     = "debian-9-stretch-v20220519"
}