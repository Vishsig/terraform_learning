# Conditional expression
resource "aws_instance" "expressions_demo" {
  ami           = "ami-0130c3a072f3832ff"
  instance_type = var.environment == "demo" ? "t2.small" : "t3.micro"
  count         = var.instance_count
  tags          = var.tags
}

# Dynamic block expressions
resource "aws_security_group" "demo_security_group" {
  name = "${var.environment}-sg"

  tags = var.tags

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_ipv4
    }
  }
  egress = []
}

# Splat expression
locals {
  instance_ids = aws_instance.expressions_demo[*].id
}
output "ec2_ids" {
  value = local.instance_ids
}

