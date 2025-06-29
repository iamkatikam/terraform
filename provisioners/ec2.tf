resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = {
    Name = "web-server"
  }

  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
    on_failure = continue # ignore errors on failure
  }
  provisioner "local-exec" {
    command = "echo run provisioners in destroy state"
    when = destroy
  }

  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo dnf install nginx",
      "sudo dnf start nginx"
    ]
  }
  provisioner "remote-exec" {
    when = destroy
    inline = [
      "sudo dnf stop nginx"
    ]
  }
}

resource "aws_security_group" "allow_all" {
  name        = var.security_group_name
  description = var.security_group_description

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-all-terraform"
  }
}

