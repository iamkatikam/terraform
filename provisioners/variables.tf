variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
    type = string
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "security_group_name" {
  default = "allow_all"
}

variable "security_group_description" {
    default = "Allow TLS inbound traffic and all outbound traffic"
    type = string
}
