provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-02457590d33d576c3" # Example AMI ID, replace with a valid one
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}