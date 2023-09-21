# my_module/ec2_instance.tf

variable "instance_type" {
  description = "The instance type for the EC2 instance"
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-072f48a9ed4f1bbda"
  instance_type = var.instance_type
}

output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}
