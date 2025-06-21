variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "ami id of Ec2 instance"
  
}

variable "instance_type" {
  type = string
  default = "t3.micro"
  description = "type of the EC2 instance"
}

variable "ec2_tags" {
    default ={
        Name = "Roboshop"
    }
  
}

variable "sg_name" {
    type = string
    default = "allow-all"
}

variable "sg_description" {
    type = string
    default = "allows all the traffi"
  
}

variable "from_port" {
    default = 0
    type = number
}

variable "to_port" {
    default = 0
    type = number
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
    type = list(string)
}
variable "sg_tags" {
    default = {
        Name = "allow-all"
        type = "string"
    }
  
}

variable "instances" {
  default = ["mysql","mongodb","rabbitmq"]
}

variable "zone_id" {
    default = "Z0816687161ICZE30XIP3"
  
}

variable "domain_name" {
    default = "rameshaws.site"
  
}