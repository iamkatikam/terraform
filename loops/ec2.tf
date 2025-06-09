resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.environment == "development" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = var.ec2_tags
}

resource "aws_security_group" "allow_all" {
  name        = var.security_group_name
  description = var.security_group_description

  ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.security_group_tags
}

