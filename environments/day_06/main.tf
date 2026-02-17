resource "aws_instance" "lifecycle_instance" {
  ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
  instance_type = var.instance_type[0]
  region        = var.allowed_region[0]

  tags = var.tags

  lifecycle {
    create_before_destroy = true
    prevent_destroy       = false
  }
}



