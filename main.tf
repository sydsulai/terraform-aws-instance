locals {
}

resource "aws_instance" "apm_servers" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = var.instance_type
  tags = {
    Name = "apm_server"
  }
  lifecycle {
    prevent_destroy = false
  }
}