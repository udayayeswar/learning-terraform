output "sample" {
  value = element(var.sample,0)
}

variable "sample" {
  default = ["abc",123]

}