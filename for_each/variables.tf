variable "ami_id" {
  description = "The AMI ID of joindevops RHEL9 image"
  type        = string
  default     = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
  default     = "t3.micro"
}

variable "ec2_tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
  default     = {
    Name = "HelloWorld"
    purpose = "variables demo"
  }
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "allow_all"
}

variable "security_group_description" {
  description = "Description of the security group"
  type        = string
  default     = "Allow TLS inbound traffic and all outbound traffic"
}

variable "from_port" {
  description = "Starting port for the security group rule"
  type        = number
  default     = 0
}

variable "to_port" {
  description = "Ending port for the security group rule"
  type        = number
  default     = 0
}

variable "protocol" {
  description = "Protocol for the security group rule"
  type        = string
  default     = "-1"
}

variable "cidr_blocks" {
  description = "CIDR blocks for the security group rule"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable security_group_tags {
  description = "Tags to apply to the security group"
  type        = map(string)
  default     = {
    Name = "allow-all"
    purpose = "variables demo"
  }
}