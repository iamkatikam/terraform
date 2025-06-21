variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of Ec2 instance"
}

variable "instance_type" {
    default = "t3.micro"
    type = string

    validation {
      condition = contains(["t3.micro","t3.small","t3.medium"], var.instance_type)
      error_message = "Valid values for instance type are: t3.micro, t3.small, t3.medium"
    }
  
}

variable "sg_ids" {
    type = list(string)
 
}

variable "tags" {
    type = map
  
}