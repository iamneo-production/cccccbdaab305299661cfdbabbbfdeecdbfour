provider "aws" {
  region = "ap-southeast-1"
  # Use proper credential management
}

module "example_instance" {
  source = "./path/to/your/module/directory"

  instance_type = "t2.micro"
}

output "public_ip" {
  value = module.example_instance.public_ip
}
