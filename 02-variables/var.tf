variable "sample" {
  default = "hello"
}

#variable is not a combination then var.sample,if it is combining with any other string then ${var.sample}
output "sample" {
  value = var.sample
}

output "sample1" {
  value = "Hey, ${var.sample}"
}