variable "project_id" {
  description = "GCP Project ID (e.g., multi-cloud-infra)"
  type        = string
  default     = "multi-cloud-infra"
}

variable "region" {
  description = "GCP region for resources"
  type        = string
  default     = "us-central1"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "my-vpc"
}

variable "subnet_cidr" {
  description = "CIDR block for the GCP Subnet"
  type        = string
  default     = "10.0.1.0/24"
}
