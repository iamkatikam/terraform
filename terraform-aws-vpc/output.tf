output "azs_info" {
  value = data.aws_availability_zones.available

}

# output "public_subnet_info" {
#     value = data.aws_availability_zones.available.names
# }