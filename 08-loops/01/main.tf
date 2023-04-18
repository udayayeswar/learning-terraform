resource "aws_instance" "sample" {
  count                  = 2
  ami                    = "ami-0bb6af715826253bf"
  instance_type          = "t3.micro"
  tags = {
    Name = "test-${count.index}"
  }
}

#if you have any resources with multiple count then if you want to refer that attribute you want to use *.
output "public_ip" {
  value = aws_instance.sample.*.public_ip
}