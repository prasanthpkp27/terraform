variable "amiId" {
	default = "ami-02913db388613c3e1"
}

variable "sg_id" {}
variable "ec2_name" {}
resource "aws_instance" "terraform-ec2" {
	ami = var.amiId
	instance_type = "t2.micro"
	key_name = "devops"
	vpc_security_group_ids = ["${var.sg_id}"]
  tags = {
    Name = var.ec2_name
    }
}