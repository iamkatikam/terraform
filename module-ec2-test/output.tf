output "pub_ip" {
    value = module.ec2.public_ip
  
}

output "private_ip" {
    value = module.ec2.priavte_ip
  
}

output "instance_id" {
  value = module.ec2.instance_id
}