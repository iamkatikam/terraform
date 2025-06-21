variable "security_group_ids" {
    default = ["sg-0aba3fdb97c048851"]
    type = list(string)
}

variable "tags" {
    default = {
        Name = "roboshop-cart"
        terraform = true
        environment = "dev"
    }
  
}

variable "instance_type" {
    default = "t3.small"
  
}