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

#string data type
variable "sample1" {
  default = "Hello World"
}

#Number data type
variable "sample2" {
  default = 100
}

#Boolean data type
variable "sample3" {
  default = true
}

#List variable
variable "sample4" {
  default = [
    "hello",
    100,
    true
  ]
}

#Map variable
variable "sample5" {
  default = {
    string = "hello"
    number = 100
    boolean = true
  }
}

#Access a list variable
output  "sample4" {
  value = var.sample4[0]
}

#Access a map variable
output  "sample5" {
  value = var.sample4["string"]
}
