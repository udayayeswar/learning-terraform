resource "aws_instance" "sample" {
  for_each               = var.instances
  ami                    = "ami-0bb6af715826253bf"
  instance_type          = each.instance_type
  tags = {
    Name = each.tagName
  }
}


variable "instances" {
  default = {
    catalogue = {
      instance_type = "t3.micro"
      tagName       = "CATALOGUE"
    }
    cart = {
      instance_type = "t3.micro"
      tagName       ="CART"
    }
  }
}