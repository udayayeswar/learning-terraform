data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-7-DevOps-Practice"
  owners      = ["837171591958"]
}

output "ami" {
  value = data.aws_ami.example
}


