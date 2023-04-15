terraform {
  backend "s3" {
    bucket = "udaya-terraform-state"
    key    = "04-resources/terraform.tfstate"
    region = "us-east-1"
  }
}
