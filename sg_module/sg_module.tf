variable "vpcId" {
  type = string
  default = "vpc-2889b940"
}
resource "aws_security_group" "sg_module_creation" {
  name        = "sg_module_creation"
  description = "terraform sg for Ec2 Instance"
  vpc_id      = var.vpcId
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
output "sg_output_id" {
  value = "${aws_security_group.sg_module_creation.id}"
}