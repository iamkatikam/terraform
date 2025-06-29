variable "security_group_ids" {
    default = ["sg-0a30f9b8a8f6adb2b"]
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