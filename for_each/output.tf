output ec2_output {
  value = aws_instance.web
  sensitive = false
  description = "value of the EC2 instance"
}