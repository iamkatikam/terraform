variable "cidr_block" {
  default     = "10.0.0.0/16"
  type        = string
  description = "CIDR block for VPC"

}

variable "project" {
  type = string

}

variable "environment" {
  type = string

}
variable "public_subnet_cidrs" {
  type = list(string)

}